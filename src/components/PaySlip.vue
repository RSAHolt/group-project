<template >
    <body>
        
    
    <div id="search employee">
           <label for="">Employee Id:</label> 
            <input  type="number" v-model="num" name="empid" id="empid">
            <button @click="switcha">Search</button>
        
    </div>
    <div v-if="bool"  >
        <div v-for="item, in payson.payrollData" :key="item"  >
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
</template>

<script>
import json from '@/data/payroll_data.json'
export default {
    data() {
    return {
        payson: json,
        num: null, // Initialize num to hold employee ID
        bool: false,
    };
    },
    methods: {
    switcha() {
        this.bool = !this.bool; // Toggle the display boolean
    }},
    computed:{
        displayp(){
           let p = document.getElementById('empid')
            return p.value
        },
        da(){
            const date = new Date();//initializing the current date

            let day = date.getDate();//day
            let month = date.getMonth() + 1;//month
            let year = date.getFullYear();//year

            day = day < 10 ? '0' + day : day;//if day is less than 2 digits i.e under 10 then add a zero at beginning with ternary 
            month = month < 10 ? '0' + month : month;//same with day but for the month.

            return `${day}/${month}/${year}`//using f-string literal to display info when 'da()' is called.
        }
        // daNext(){
        //     const date = new Date();
        //     const nextThree = date. setDate(date. getDate() + 3)
        //     let day = date.getDate();
        //     let month = date.getMonth() + 1;
        //     let year = date.getFullYear();
        // return nextThree+'/'+month+'/'+year
        // }
    }}
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
}
</style>
