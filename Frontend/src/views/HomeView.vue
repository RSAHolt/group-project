<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/mts_360.gif">
    <h2>Welcome to the Main App!</h2>
    <p>Here is some protected content.</p>
    <button @click="logout">Logout</button>
  </div>
</template>

<script>
// @ is an alias to /src

export default {
  name: 'HomeView',
  components: {},
  methods: {
    logout() {
      this.$store.state.log = false; // Set the login state to false when logging out
    }
  },
}
</script>

<style scoped>
.home {
  display: flex;
  flex-direction: column; /* Stack elements vertically */
  align-items: center; /* Center horizontally */
  justify-content: center; /* Center vertically */
  height: 100vh; /* Full viewport height */
  text-align: center; /* Center text */
}

h2 {
  color: black;
}

p {
  color: rgb(255, 20, 20);
}

button {
  margin-top: 1rem; /* Add some space above the button */
  padding: 0.5rem 1rem; /* Add padding for better appearance */
  background-color: #42b983; /* Button background color */
  color: white; /* Button text color */
  border: none; /* Remove default border */
  border-radius: 5px; /* Rounded corners */
  cursor: pointer; /* Change cursor on hover */
}

button:hover {
  background-color: #36a373; /* Darker shade on hover */
}
</style>