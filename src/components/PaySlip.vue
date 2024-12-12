<<<<<<< HEAD
<template >
    <body>
        
    
    <div id="search employee">
           <label for="">Employee Id:</label> 
            <input  type="number" v-model="num" name="empid" id="empid">
            <button @click="switcha">Search</button>
        
    </div>
    <div v-if="bool"  >
        <div v-for="item,index in payson.payrollData" :key="item"  >
            <div v-if="item.employeeId == num" >
            <div id="heading">
                <h2>Payslip</h2>
            </div>
            <div id="displayBlock">
            <div id="companyDetails">
              <p> Co. Name: ModernTech Solutions  </p>
              <p> Co. Address: 1st Floor, Cradock Heights, 22 Cradock Avenue Rosebank
                    Johannesburg, South Africa </p>
              <p> Business Tel: 212-875-6890 </p>
            </div>
            <div id="employeeDetails">
              <p>  Employee ID: {{item.employeeId}} </p>
              <p>  Employee Name: </p>
              <p>  Employee Position: </p>
              <p>  Employee Department: </p>

            </div>
            <div id="paymentDetails">
              <p>  Date Enaged:{{ da }} </p>
              <p>  Bank Name: </p>
              <p>  Account Type: </p>
              <p>  Account No: </p>
              <p>  Branch Code: </p>
              <p>  Hourly Rate: </p>
            </div>
            <div id="earnings">
              <p>  Salary: </p>
            </div>
            <div id="deductions">
               <p> Leave Days: </p>
            </div>
            <div id="netPay">
               <p> Nett Pay: </p>
            </div>
            <div>
                <button>Print Payslip</button>
            </div>
        </div>
        </div>
        </div>

    </div>
    </body>
=======
<template>
    <div id="search-employee">
    <input type="number" v-model="num" name="empid" id="empid" placeholder="Enter Employee ID">
    <button @click="switcha">Search</button>
    </div>

    <div v-if="bool" id="display-block">
    <div v-for="(item, index) in payson.payrollData" :key="item.employeeId">
        <div v-if="item.employeeId == num">
        <div id="company-details">
            <!-- Company details can be added here -->
        </div>
        <div id="employee-details">
            Employee ID: {{ item.employeeId }} (Index: {{ index }})
        </div>
        <div id="payment-details">
            <!-- Payment details can be added here -->
        </div>
        <div id="earnings">
            <!-- Earnings can be added here -->
        </div>
        <div id="deductions">
            <!-- Deductions can be added here -->
        </div>
        </div>
    </div>
    </div>
>>>>>>> aaffeb1b13f6ed9d59dec2b0ea54ee253ae79d4b
</template>

<script>
<<<<<<< HEAD
import json from '@/data/payroll_data.json'
import LogIn from './LogIn.vue';
=======
import json from '@/data/payroll_data.json';

>>>>>>> aaffeb1b13f6ed9d59dec2b0ea54ee253ae79d4b
export default {
    data() {
    return {
        payson: json,
        num: null, // Initialize num to hold employee ID
        bool: true,
    };
    },
    methods: {
    switcha() {
        this.bool = !this.bool; // Toggle the display boolean
    },
<<<<<<< HEAD
    computed:{
        displayp(){
           let p = document.getElementById('empid')
            return p.value
        },
        da(){
            const date = new Date();

            let day = date.getDate();
            let month = date.getMonth() + 1;
            let year = date.getFullYear();
        return day+'/'+month+'/'+year
        }
        // daNext(){
        //     const date = new Date();
        //     const nextThree = date. setDate(date. getDate() + 3)
        //     let day = date.getDate();
        //     let month = date.getMonth() + 1;
        //     let year = date.getFullYear();
        // return nextThree+'/'+month+'/'+year
        // }
    }
}
</script>
<style scoped >
body{
    max-width: 800px;
    border: 1x solid rgb(157, 157, 157);
    overflow:hidden;
    justify-content:center ;
    margin-left: auto;
    margin-right: auto;
}
#displayBlock{
    background-color: rgb(206, 196, 196);
}
#companyDetails{
    padding-top: 50px;
    width:400px;
    height:200px;
    float:left;
    border-width:1px;
    border-style:solid;
    border-color:black;
}
#employeeDetails{
    padding-top: 20px;
    width:400px;
    height:200px;
    float:right;
    border-width:1px;
    border-style:solid;
    border-color:black;
}
#paymentDetails{
    display:block;
    border-width:1px;
    border-style:solid;
    border-color:black;
}
#earnings{
    border-width:1px;
    border-style:solid;
    border-color:black;
}
#deductions{
    border-width:1px;
    border-style:solid;
    border-color:black;
}
#netPay{
    border-width:1px;
    border-style:solid;
    border-color:black;
=======
    },
    computed: {
    displayp() {
        const empIdInput = document.getElementById('empid');
        return empIdInput ? empIdInput.value : null; // Safety check for input element
},
    },
};
</script>

<style>
  /* Add styles here for better presentation */
#search-employee {
    margin: 20px;
}

#display-block {
    margin-top: 20px;
}
#company-details,
#employee-details,
#payment-details,
#earnings,
#deductions {
    margin-bottom: 10px;
    padding: 10px;
    border: 1px solid #ccc; /* Example styling */
>>>>>>> aaffeb1b13f6ed9d59dec2b0ea54ee253ae79d4b
}
</style>
