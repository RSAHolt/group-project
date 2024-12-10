<template>
  <nav>
    <router-link to="/">Home</router-link> |
    <router-link to="/about">About</router-link> |
    <router-link to="/about">Attendance-Tracker</router-link>
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
