<template >
    <div>
        <table>
            <thead>
                <tr>
                    <th>Employee Id</th>
                    <th>Name</th>
                    <th>Attendance
                        
                    </th>
                    <th>Leave Requests</th>
                    
                </tr>
            </thead>
            <tbody>
                <tr v-for="item in registry.attendanceAndLeave" :key="item.employeeId">
                    <td>{{ item.employeeId }}</td>
                    <td>{{ item.name }}</td>
                    <td>
                        <table>
                            <thead>
                                <tr>
                                    <th> Date</th>
                                    <th> Status</th>
                                    <th><button @click="show">{{shocks}}</button></th>
                                </tr>
                            </thead>
                            <tbody v-show="bool" >
                                <tr v-for="inst in item.attendance" :key="inst">

                                        <td >{{ inst.date }}</td>
                                        <td>{{ inst.status }}</td>
                                        
                                
                                </tr>
                            
                            </tbody>
                        </table>
                    </td>
                    <td>
                        <table>
                            <thead>
                                <tr>
                                    <th>Date</th>
                                    <th>Status</th>
                                    <th>Reason</th>
                                </tr>
                            </thead>
                            <tbody v-show="bool">
                                <tr v-for="pinst in item.leaveRequests" :key="pinst">

                                    <td >{{ pinst.date }}</td>
                                    <td>{{ pinst.status }}</td>
                                    <td>{{ pinst.reason }}</td>

                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</template>
<script>
import json from '@/data/attendance.json';//import the merged_data json for data manipulation
export default {
    data() {
        return {
            registry:json,
            bool:false,
            shocks:'Expand'
        }
    },
    methods: {
        show(){
            this.bool=!this.bool
            if (this.shocks=='Expand') {
                this.shocks='Collapse'
            } else {
                this.shocks='Expand'
            }
        }
    },
}
</script>
<style scoped >

table {
    border-collapse: collapse;
    width: 100%;
    background-color:rgb(206, 196, 196);
}


th, td {
    border: 1px solid rgb(2, 2, 2); 
    padding: 8px; 
}


th {
    background-color:rgb(206, 196, 196); 
    font-weight: bold; 
}


tr:hover {
    background-color: rgb(176, 166, 166); 
}
</style>