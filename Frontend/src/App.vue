<template>
  <nav v-if="this.$store.state.log" class="navbar sticky-top bg-body-tertiary border-bottom border-body" id="nav" data-bs-theme="dark">
    <div class="container-fluid d-flex justify-content-center">
      <a class="navbar-brand" href="#home">Modern Tech Solutions</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <router-link to="/">Home</router-link>
          </li>
          <li class="nav-item">
            <router-link to="/pay">Payslip-Summary</router-link>
          </li>
          <li>
            <router-link to="/about">About</router-link>
          </li>
          <li>
            <router-link to="/attendtrack">Attendance-Tracker</router-link>|
          </li>
          <li>
            <router-link to="/employeelist">Employee-List</router-link>|
          </li>

          <!-- <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Dropdown
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">Action</a></li>
              <li><a class="dropdown-item" href="#">Another action</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
          </li> -->
          <!-- <li class="nav-item">
            <a class="nav-link disabled" aria-disabled="true">Disabled</a>
          </li> -->
          <li>
            <button @click="logout">Logout</button>
          </li>
        </ul>
        <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </nav>
  <div class="back">
  <router-view v-if="this.$store.state.log"/>
  <div id="login">
    <!-- Show Login Component only when not logged in -->
    <LogIn v-if="!this.$store.state.log" @login-success="handleLoginSuccess" />
  </div>
  
  </div>
</template>

<script>
import LogIn from './components/LogIn.vue';
export default {
  components:{
    LogIn,

  },
  data() {
    return {
      timeOffRequests: [], // Track time-off requests
      log:false
    };
  },
  methods: {
    submitRequest(employeeId, date) {
      // Adding the request to the timeOffRequests array
      this.timeOffRequests.push({ employeeId, date, status: 'Pending' });
      console.log(`Request submitted for Employee ID: ${employeeId} on Date: ${date}`);
    },
    approveRequest(index) {
      if (this.timeOffRequests[index]) {
        this.timeOffRequests[index].status = 'Approved';
        console.log(`Request at index ${index} approved.`);
      } else {
        console.log(`No request found at index ${index}.`);
      }
    },
    denyRequest(index) {
      if (this.timeOffRequests[index]) {
        this.timeOffRequests[index].status = 'Denied';
        console.log(`Request at index ${index} denied.`);
      } else {
        console.log(`No request found at index ${index}.`);
      }
    },
    handleLoginSuccess() {
    this.$store.state.log = true; // Set the login state to true on successful login
    },
    logout() {
      this.$store.state.log = false; // Set the login state to false when logging out
    }
  }
}
</script>

<style>
/* Improved Navbar Centering */
.navbar .container-fluid {
  justify-content: center !important;
  padding: 0 2rem;
}

.navbar-nav {
  margin-left: auto;
  margin-right: auto !important;
  justify-content: center;
}

/* Centered Mobile Menu */
@media (max-width: 992px) {
  .navbar-nav {
    text-align: center;
    width: 100%;
  }
  
  .nav-item {
    width: 100%;
    text-align: center;
  }
  
  .nav-item a {
    justify-content: center;
  }
}

/* Enhanced Main Content Centering */
.back {
  display: flex;
  flex-direction: column;
  align-content: center;
  justify-content: center;
  min-height: 100vh;
  padding: 2rem 0;
}

/* Login Container Centering */
#login {
  width: 100%;
  max-width: 600px;
  margin: 0 auto;
}

/* Form Centering Adjustments */
.d-flex {
  justify-content: center !important;
  margin: 1rem auto;
}

/* Logout Button Alignment */
button[type="button"] {
  margin: 0 1rem;
  display: flex;
  align-items: center;
}

h1, h2, h3 {
  text-align: center;
  color: #fff !important;
  text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.8);
  margin: 2rem 0;
}

h1 {
  font-size: 2.5rem;
  font-weight: 700;
  letter-spacing: -0.5px;
}

/* Centering Container */
.centered-content {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  min-height: 80vh;
  padding: 2rem;
  text-align: center;
}

.content-block {
  background: rgba(0, 0, 0, 0.6);
  padding: 2rem;
  border-radius: 16px;
  backdrop-filter: blur(8px);
  margin: 2rem 0;
}

:root {
  --primary-hue: 210;
  --primary-color: hsl(var(--primary-hue), 29%, 20%);
  --secondary-color: #42b983;
  --nav-height: 80px;
  --transition-speed: 0.3s;
}

#app {
  font-family: 'Avenir', system-ui, -apple-system, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  min-height: 100vh;
  display: flex;
  flex-direction: column;
}

.navbar {
  padding: 1rem 2rem;
  background: hsla(var(--primary-hue), 25%, 15%, 0.95) !important;
  backdrop-filter: blur(10px);
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
  min-height: var(--nav-height);
}

.navbar-brand {
  font-size: 1.5rem;
  font-weight: 600;
  letter-spacing: -0.5px;
  margin-right: 3rem;
  color: white !important;
  transition: transform var(--transition-speed) ease;
}

.navbar-nav {
  gap: 1.5rem;
  align-items: center;
}

.nav-item {
  position: relative;
  padding: 0.5rem 0;
}

.nav-item a {
  color: rgba(255, 255, 255, 0.9) !important;
  font-weight: 500;
  padding: 0.75rem 1.25rem;
  border-radius: 8px;
  transition: all var(--transition-speed) ease;
  text-decoration: none !important;
}

.nav-item a:hover {
  background: rgba(255, 255, 255, 0.1);
  transform: translateY(-2px);
}

.nav-item a.router-link-exact-active {
  color: var(--secondary-color) !important;
  background: rgba(66, 185, 131, 0.15);
}

.nav-item a.router-link-exact-active::after {
  content: '';
  position: absolute;
  bottom: -8px;
  left: 50%;
  transform: translateX(-50%);
  width: 60%;
  height: 3px;
  background: var(--secondary-color);
  border-radius: 2px;
}

/* Logout Button */
button[type="button"] {
  background: rgba(255, 255, 255, 0.1);
  border: 2px solid rgba(255, 255, 255, 0.2);
  color: white;
  padding: 0.75rem 1.5rem;
  border-radius: 8px;
  transition: all var(--transition-speed) ease;
}

button[type="button"]:hover {
  background: var(--secondary-color);
  border-color: transparent;
  transform: translateY(-2px);
}

/* Search Form */
.d-flex {
  gap: 1rem;
  margin-left: auto;
}

.form-control {
  width: 240px;
  border-radius: 8px;
  border: 2px solid rgba(255, 255, 255, 0.2);
  background: rgba(255, 255, 255, 0.05);
  color: white !important;
}

.btn-outline-success {
  border-color: var(--secondary-color);
  color: var(--secondary-color);
}

.btn-outline-success:hover {
  background: var(--secondary-color);
  border-color: transparent;
}

/* Main Content Area */
.back {
  flex: 1;
  background-image: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)),
    url(https://www.openaccessgovernment.org/wp-content/uploads/2023/09/iStock-1222540826-scaled.jpg);
  background-size: cover;
  background-position: center;
  background-attachment: fixed;
  padding: 2rem;
  min-height: calc(100vh - var(--nav-height));
}

#login {
  display: flex;
  justify-content: center;
  align-content: center;
  min-height: 100vh;
  padding: 2rem;
}

/* Mobile Menu */
.navbar-toggler {
  border-color: rgba(255, 255, 255, 0.2);
}

.navbar-toggler-icon {
  background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'%3e%3cpath stroke='rgba(255, 255, 255, 0.8)' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
}

@media (max-width: 992px) {
  .navbar {
    padding: 1rem;
  }
  
  .navbar-nav {
    padding: 1rem 0;
    gap: 0.75rem;
  }
  
  .nav-item a {
    padding: 0.75rem;
  }
  
  .d-flex {
    margin-top: 1rem;
    width: 100%;
  }
  
  .form-control {
    width: 100%;
  }
}
</style>