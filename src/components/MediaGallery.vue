<template>
  <div class="media-gallery">
    <!-- Gallery Grid -->
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
      <div
        v-for="(item, index) in mediaItems"
        :key="index"
        @click="openLightbox(index)"
        class="gallery-item relative overflow-hidden rounded-lg cursor-pointer group"
      >
        <!-- Image Thumbnail -->
        <div v-if="item.type === 'image'" class="aspect-video bg-gray-200 relative">
          <img
            :src="item.src"
            :alt="item.caption || `Gallery item ${index + 1}`"
            class="w-full h-full object-cover transition-transform duration-300 group-hover:scale-110"
            @error="handleImageError($event, index)"
            @load="handleImageLoad"
          />
          <!-- Fallback content when image fails to load -->
          <div 
            v-if="imageErrors[index]" 
            class="absolute inset-0 flex items-center justify-center bg-gray-100"
          >
            <div class="text-center text-gray-500">
              <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="mx-auto mb-2">
                <rect x="3" y="3" width="18" height="18" rx="2" ry="2"/>
                <circle cx="8.5" cy="8.5" r="1.5"/>
                <polyline points="21,15 16,10 5,21"/>
              </svg>
              <p class="text-sm">{{ item.caption || 'Image' }}</p>
            </div>
          </div>
        </div>

        <!-- Video Thumbnail -->
        <div v-else class="aspect-video bg-gray-900 relative">
          <video
            :src="item.src"
            class="w-full h-full object-cover"
            preload="metadata"
            muted
          ></video>
          <!-- Play Button Overlay -->
          <div class="absolute inset-0 flex items-center justify-center bg-black bg-opacity-30 transition-opacity group-hover:bg-opacity-50">
            <div class="play-button">
              <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 24 24" fill="white" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <circle cx="12" cy="12" r="10"></circle>
                <polygon points="10 8 16 12 10 16 10 8"></polygon>
              </svg>
            </div>
          </div>
        </div>

        <!-- Hover Overlay -->
        <div class="absolute inset-0 bg-gradient-to-t from-black/60 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-300 flex items-end p-4">
          <p v-if="item.caption" class="text-white font-medium">{{ item.caption }}</p>
        </div>
      </div>
    </div>

    <!-- Lightbox Modal -->
    <Transition name="lightbox">
      <div
        v-if="isLightboxOpen"
        class="lightbox-overlay fixed inset-0 z-50 flex items-center justify-center"
        @click="closeLightbox"
      >
        <!-- Close Button -->
        <button
          @click="closeLightbox"
          class="absolute top-4 right-4 z-60 text-white hover:text-gray-300 transition-colors"
        >
          <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
            <line x1="18" y1="6" x2="6" y2="18"></line>
            <line x1="6" y1="6" x2="18" y2="18"></line>
          </svg>
        </button>

        <!-- Previous Button -->
        <button
          v-if="mediaItems.length > 1"
          @click.stop="previousItem"
          class="absolute left-4 z-60 text-white hover:text-gray-300 transition-colors"
        >
          <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
            <polyline points="15 18 9 12 15 6"></polyline>
          </svg>
        </button>

        <!-- Next Button -->
        <button
          v-if="mediaItems.length > 1"
          @click.stop="nextItem"
          class="absolute right-4 z-60 text-white hover:text-gray-300 transition-colors"
        >
          <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
            <polyline points="9 18 15 12 9 6"></polyline>
          </svg>
        </button>

        <!-- Media Content -->
        <div
          @click.stop
          class="lightbox-content max-w-6xl max-h-[90vh] w-full mx-4"
        >
          <!-- Image Display -->
          <img
            v-if="currentItem?.type === 'image'"
            :src="currentItem.src"
            :alt="currentItem.caption || 'Gallery image'"
            class="w-full h-auto max-h-[85vh] object-contain rounded-lg"
            @error="handleLightboxImageError"
          />

          <!-- Video Display -->
          <video
            v-else-if="currentItem?.type === 'video'"
            :src="currentItem.src"
            controls
            autoplay
            class="w-full h-auto max-h-[85vh] rounded-lg"
          ></video>

          <!-- Caption -->
          <p
            v-if="currentItem?.caption"
            class="text-white text-center mt-4 text-lg"
          >
            {{ currentItem.caption }}
          </p>

          <!-- Counter -->
          <p class="text-white text-center mt-2 text-sm opacity-75">
            {{ currentIndex + 1 }} / {{ mediaItems.length }}
          </p>
        </div>
      </div>
    </Transition>
  </div>
</template>

<script setup>
import { ref, computed, onMounted, onUnmounted } from 'vue'

// Props
const props = defineProps({
  mediaItems: {
    type: Array,
    required: true,
    validator: (items) => {
      return items.every(item => 
        item.type && 
        item.src && 
        ['image', 'video'].includes(item.type)
      )
    }
  }
})

// State
const isLightboxOpen = ref(false)
const currentIndex = ref(0)
const imageErrors = ref({})

// Computed
const currentItem = computed(() => props.mediaItems[currentIndex.value])

// Methods
const openLightbox = (index) => {
  console.log('Opening lightbox for item:', props.mediaItems[index])
  currentIndex.value = index
  isLightboxOpen.value = true
  document.body.style.overflow = 'hidden'
}

const closeLightbox = () => {
  isLightboxOpen.value = false
  document.body.style.overflow = ''
}

const nextItem = () => {
  currentIndex.value = (currentIndex.value + 1) % props.mediaItems.length
}

const previousItem = () => {
  currentIndex.value = (currentIndex.value - 1 + props.mediaItems.length) % props.mediaItems.length
}

// Error handling for images
const handleImageError = (event, index) => {
  console.error('Failed to load image:', event.target.src)
  imageErrors.value[index] = true
}

const handleImageLoad = (event) => {
  console.log('Image loaded successfully:', event.target.src)
}

const handleLightboxImageError = (event) => {
  console.error('Failed to load lightbox image:', event.target.src)
}

// Keyboard navigation
const handleKeydown = (e) => {
  if (!isLightboxOpen.value) return
  
  if (e.key === 'Escape') closeLightbox()
  if (e.key === 'ArrowRight') nextItem()
  if (e.key === 'ArrowLeft') previousItem()
}

onMounted(() => {
  window.addEventListener('keydown', handleKeydown)
})

onUnmounted(() => {
  window.removeEventListener('keydown', handleKeydown)
  document.body.style.overflow = ''
})
</script>

<style scoped>
.gallery-item {
  height: 250px;
}

.play-button {
  transition: transform 0.3s ease;
}

.gallery-item:hover .play-button {
  transform: scale(1.1);
}

.lightbox-overlay {
  background-color: rgba(0, 0, 0, 0.95);
  backdrop-filter: blur(10px);
}

.lightbox-content {
  animation: zoomIn 0.3s ease-out;
}

@keyframes zoomIn {
  from {
    opacity: 0;
    transform: scale(0.9);
  }
  to {
    opacity: 1;
    transform: scale(1);
  }
}

/* Transition classes */
.lightbox-enter-active,
.lightbox-leave-active {
  transition: opacity 0.3s ease;
} 

.lightbox-enter-from,
.lightbox-leave-to {
  opacity: 0;
}

/* Responsive adjustments */
@media (max-width: 768px) {
  .gallery-item {
    height: 200px;
  }
}
</style>