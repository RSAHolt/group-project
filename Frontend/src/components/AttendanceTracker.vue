<template>
    <div>
        {{ $store.state.employees}}
        <h2>Attendance Tracker</h2>
        <EmployeeAttendance/>
        <time-off-request @submit-request="submitRequest"></time-off-request>

        <div v-for="(request, index) in timeOffRequests" :key="index">
            <p>{{ request.employeeId }} - {{ request.date }}: {{ request.status }}</p>
            <button @click="approveRequest(index)">Approve</button>
            <button @click="denyRequest(index)">Deny</button>
        </div>
    </div>
</template>

<script>
import TimeOffRequest from './TimeOffRequest.vue';
import EmployeeAttendance from './EmployeeAttendance.vue';
import AttendanceReport from './AttendanceReport.vue';


export default {
    components: {
        TimeOffRequest,
        EmployeeAttendance,
        AttendanceReport
    },
    data() {
        return {
            timeOffRequests: []
        };
    },
    mounted(){   
        this.$store.dispatch('getAttend')
    }
    ,
    methods: {
        submitRequest(employeeId, date) {
            this.timeOffRequests.push({ employeeId, date, status: 'Pending' });
        },
        approveRequest(index) {
            const request = this.timeOffRequests[index];
            request.status = 'Approved';
            // Logic to update attendance can be added here
        },
        denyRequest(index) {
            this.timeOffRequests[index].status = 'Denied';
        }
    }
};
</script>

<style scoped>
/* Styles specific to AttendanceTracker */
table{
    color: white;
}
</style>
