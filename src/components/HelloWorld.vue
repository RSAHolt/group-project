<template>
<div>
  <title>Attendance Tracking</title>
</div>
<div id="app">
  <attendance-tracker></attendance-tracker>
  </div>
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