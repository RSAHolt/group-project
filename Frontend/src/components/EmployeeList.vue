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
            <!-- <button @click="updateEmployee(employee.employee_id)" class="crud-btn update">Update</button> -->
            <button @click="deleteEmployee(employee.employee_id)" class="crud-btn delete">Delete</button>
            <!-- <button @click="addEmployee" class="crud-btn add">Add</button> -->
            </td>
        </tr>
        </tbody>
    </table>
    </div>

    <h2>Add Employee Information</h2>
<form >
  <table class="form-table">
    <tr>
      <td><label for="name">Name:</label></td>
      <td><input type="text" id="name" name="name" required v-model="post.name"></td>
    </tr>
    <tr>
      <td><label for="position">Position:</label></td>
      <td><input type="text" id="position" name="position" required v-model="post.position"></td>
    </tr>
    <tr>
      <td><label for="department">Department:</label></td>
      <td><input type="text" id="department" name="department" required v-model="post.department"></td>
    </tr>
    <tr>
      <td><label for="salary">Salary:</label></td>
      <td><input type="number" id="salary" name="salary" required v-model="post.salary"></td>
    </tr>
    <tr>
      <td><label for="contact">Email:</label></td>
      <td><input type="email" id="contact" name="email" required v-model="post.contact"></td>
    </tr>
    <tr>
      <td colspan="2" class="submit-btn-cell">
        <button @click="postEmployee()">Submit</button>
      </td>
    </tr>
  </table>
</form>

<h2>Change Employee Information</h2>
<form >
  <table class="form-table">
    <tr>
      <td><label for="employee_id">Employee_id:</label></td>
      <td><input type="text" id="employee_id" name="nemployee_id" required v-model="patch.employee_id"></td>
    </tr>
    <tr>
      <td><label for="name">Name:</label></td>
      <td><input type="text" id="name" name="name" required v-model="patch.name"></td>
    </tr>
    <tr>
      <td><label for="position">Position:</label></td>
      <td><input type="text" id="position" name="position" required v-model="patch.position"></td>
    </tr>
    <tr>
      <td><label for="department">Department:</label></td>
      <td><input type="text" id="department" name="department" required v-model="patch.department"></td>
    </tr>
    <tr>
      <td><label for="salary">Salary:</label></td>
      <td><input type="number" id="salary" name="salary" required v-model="patch.salary"></td>
    </tr>
    <tr>
      <td><label for="contact">Email:</label></td>
      <td><input type="email" id="contact" name="email" required v-model="patch.contact"></td>
    </tr>
    <tr>
      <td colspan="2" class="submit-btn-cell">
        <button @click="updateEmployee()" >Update</button>
      </td>
    </tr>
  </table>
</form>
</template>
{{name}}
<script>
export default {
    data() {
        return {
            post:{
                name:null,
                position:null,
                department:null,
                salary:null,
                contact:null
            },
            patch:{
                employee_id:null,
                name:null,
                position:null,
                department:null,
                salary:null,
                contact:null
            }
            
        }
    },
    mounted(){
        this.$store.dispatch('getAttend')
    }
    // ,props: ['employees']
    ,methods:{
        deleteEmployee(id){
            this.$store.dispatch('deleteEmployee',id)
        },
        postEmployee(){
            this.$store.dispatch('postEmployee',this.post)
        },
        updateEmployee(){
            this.$store.dispatch('patchEmployee',this.patch)
        }
    }
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

/* Form styling */
form {
    max-width: 600px;
    margin: 0 auto;
    padding: 20px;
    background-color: #f9f9f9;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

table.form-table {
    width: 100%;
    border-spacing: 0;
}

form label {
    font-weight: bold;
    margin-bottom: 8px;
}

form input {
    width: 100%;
    padding: 10px;
    margin-bottom: 12px;
    border: 1px solid #ddd;
    border-radius: 4px;
    font-size: 14px;
}

.submit-btn-cell {
    text-align: center;
    padding-top: 15px;
}

form button {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
}

form button:hover {
    background-color: #45a049;
}

/* CRUD Button Styling */
.crud-btn {
    padding: 6px 12px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 14px;
}

.crud-btn.update {
    background-color: #4CAF50;
    color: white;
}

.crud-btn.delete {
    background-color: #f44336;
    color: white;
}

.crud-btn:hover {
    opacity: 0.8;
}
</style>