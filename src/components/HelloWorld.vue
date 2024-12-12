<template>
<div>
  <title>Attendance Tracking</title>
</div>
<div id="app">
  <attendance-tracker></attendance-tracker>
  </div>
<<<<<<< HEAD
  <div id="app">
        <attendance-tracker></attendance-tracker>
    </div>
    <!-- <script src="https://cdn.jsdelivr.net/npm/vue@2"></script> -->
    <!-- <script src="js/app.js"></script> -->
=======
>>>>>>> aaffeb1b13f6ed9d59dec2b0ea54ee253ae79d4b
</template>

<script>
import Vue from 'vue';

export default {
  mounted() {
    new Vue({
      render: h => h()
    }).$mount('#app');
  }
}

</script>
<style scoped>
  
</style>