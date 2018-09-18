<template>
  <div>
    <gallery :images="images" :index="index" @close="index = null"></gallery>
    <div
      class="image"
      v-for="(image, imageIndex) in images"
      :key="imageIndex"
      @click="index = imageIndex"
      :style="{ 
        backgroundImage: 'url(' + image + ')', 
        width: '200px', 
        height: '200px',
        display: 'inline-block',
        height: '100%',
        width: 'auto',
        maxWidth: 'none' }"
    ></div>
  </div>
</template>

<script>
  import VueGallery from 'vue-gallery';
  
  export default {
    props:['images'],
    data: function () {
      return {
        index: null
      };
    },

    components: {
      'gallery': VueGallery
    },
  }
</script> 