<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png">
    <h2>Welcome to the Main App!</h2>
      <p>Here is some protected content.</p>
      <button @click="logout">Logout</button>
  </div>
</template>

<script>
// @ is an alias to /src


export default {
  name: 'HomeView',
  components: {
  
  }
}
</script>
