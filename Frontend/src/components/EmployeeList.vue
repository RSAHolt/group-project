<template>
    <div>
    <table>
        <thead>
        <tr>
            <th>Employee ID</th>
            <th>Name</th>
            <th>Position</th>
            <th>Department</th>
        </tr>
        </thead>
        <tbody>
        <tr v-for="employee in $store.state.employees" :key="employee.employee_id">
            <td>{{ employee.employee_id }}</td>
            <td>{{ employee.name }}</td>
            <td>{{ employee.position }}</td>
            <td>{{ employee.department }}</td>
            <td>
            <button @click="updateEmployee(employee.employee_id)" class="crud-btn update">Update</button>
            <button @click="deleteEmployee(employee.employee_id)" class="crud-btn delete">Delete</button>
            <button @click="addEmployee" class="crud-btn add">Add</button>
            </td>
        </tr>
        </tbody>
    </table>
    </div>
</template>

<script>
export default {
    mounted(){
        this.$store.dispatch('getAttend')
    }
    // props: ['employees']
    };
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