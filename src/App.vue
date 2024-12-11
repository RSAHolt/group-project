<template>
   <nav class="navbar sticky-top bg-body-tertiary border-bottom border-body" id="nav" data-bs-theme="dark">
      <div class="container-fluid d-flex justify-content-center">
        <a class="navbar-brand" href="#home">Navbar</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <router-link to="/home" >Home</router-link>
            </li>
            <li class="nav-item">
              <router-link to="/pay">Payslip Summary</router-link>
            </li>
            <li>
              <router-link to="/about">About</router-link>
            </li>
            <li>
              <router-link to="/attendtrack">Attendance-Tracker</router-link>|
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Dropdown
              </a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">Action</a></li>
                <li><a class="dropdown-item" href="#">Another action</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="#">Something else here</a></li>
              </ul>
            </li>
            <li class="nav-item">
              <a class="nav-link disabled" aria-disabled="true">Disabled</a>
            </li>
          </ul>
          <form class="d-flex" role="search">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
          </form>
        </div>
      </div>
    </nav>
  <nav>
  </nav>
  <router-view/>
</template>

<script>
export default{
  data(){
    employees: [
      {id: 1, name: 'John Doe', attendance:{}},
      {id: 2, name: 'Jane Smith', attendance:{}}
    ]
    timeOffRequests: []
  },
  methods: {
    submitRequest(employeeId,date){
      this.timeOffRequests.push({employeeId,date,status: 'Pending'});
    },
    approveRequest(index){
      const request = this.timeOffRequests[index];
      const employee = this.employees.find(emp => emp.id === request.employeeId);
      employee.attendance[request.date]
      = 'Absent';
          request.status = 'Approved';
    },
    denyRequest(index){
      this.timeOffRequests[index].status
      = 'Denied';
    }
  },
  components:{
    'attendance-tracker':{
      template: `
      <div>
        <h2>Attendance Tracker</h2>
        <time-off-request @submit-request="submitRequest"></timeoffRequests>
          <div v-for="(request, index) in timeOffRequests" :key="index">
                        <p>{{ request.employeeId }} - {{ request.date }}: {{ request.status }}</p>
                        <button @click="approveRequest(index)">Approve</button>
                        <button @click="denyRequest(index)">Deny</button>
                    </div>
                </div>`,
                methods: {
                  submitRequest(employeeId,date){
                    this.$emit('submit-request',employeeId, date);
                  }
                }
    },
    'time-off-request': {
            template: `
                <div>
                    <input v-model="date" type="date" />
                    <button @click="submit">Submit Request</button>
                </div>
            `,
            data() {
                return {
                    date: ''
                };
            },
            methods: {
                submit() {
                    this.$emit('submit-request', 1, this.date); // Hardcoded employeeId for demo
                }
            }
        }
    }
  }

</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

nav {
  padding: 30px;
}

nav a {
  font-weight: bold;
  color: #2c3e50;
}

nav a.router-link-exact-active {
  color: #42b983;
}
</style>
