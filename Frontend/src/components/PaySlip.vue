<template>
    <body>
        <div id="search-employee">
            <label for="empid">Employee Id:</label> 
            <input type="number" v-model="num" name="empid" id="empid" placeholder="Enter Employee ID">
            <button @click="switcha(num)">Search</button>
        </div>
        <div v-if="bool">
            <div v-for="item in $store.state.payroll" :key="item">
                <div id="heading">
                    <h2>Payslip</h2>
                </div>
                <div id="displayBlock" ref="document">
                    <div id="companyDetails">
                        <p>Co. Name: ModernTech Solutions</p>
                        <p>Co. Address: 1st Floor, Cradock Heights, 22 Cradock Avenue Rosebank, Johannesburg, South Africa</p>
                        <p>Business Tel: 212-875-6890</p>
                    </div>
                    <div id="employeeDetails">
                        <p>Employee ID: {{ item.employee_id }}</p>
                        <p>Employee Name: {{ item.name }}</p>
                        <p>Employee Position: {{ item.position }}</p>
                        <p>Employee Department: {{ item.department }}</p>
                    </div>
                    <div id="paymentDetails">
                        <p>Date Engaged: {{ da }}</p>
                        <p>Bank Name: Capitec</p>
                        <p>Account Type: Cheque</p>
                        <p>Account No: 4206911</p>
                        <p>Branch Code: 470010</p>
                        <p>Hourly Rate: R{{ Math.round(item.salary/item.hoursWorked) }}/hr</p>
                    </div>
                    <div id="earnings">
                        <p>Salary: R{{ item.salary }}</p>
                    </div>
                    <div id="deductions">
                        <p>Leave Days: {{ item.leaveDeductions }}</p>
                        <p>Deducted: R{{ item.salary - item.finalSalary }}</p>
                    </div>
                    <div id="netPay">
                        <p>Nett Pay: R{{ item.finalSalary }}</p>
                    </div>
                </div>
                <div>
                    <button @click="print" class="download-btn">Download Payslip</button>
                </div>
            </div>
        </div>
    </body>
</template>

<script>
import json from '@/data/merged_data.json'; // import the merged_data json for data manipulation
import html2pdf from "html2pdf.js"; // import the html module to download payslips

export default {
    data() {
        return {
            payson: json, // using the imported json file in data
            num: null, // Initialize num to hold employee ID
            bool: false, // boolean for logic switching.
        };
    },
    methods: {
        switcha(id) {
            this.bool = !this.bool; // Toggle the display boolean
            this.$store.dispatch('getPay', id);
        },
        print() {
            html2pdf(document.getElementById("displayBlock"), { // get element 'displayBlock' and convert whatever is under this div to a pdf document under the filename 'payslip.pdf'
                margin: 1,
                filename: "payslip.pdf"
            });
        }
    },
    computed: {
        da() {
            const date = new Date(); // initializing the current date
            let day = date.getDate(); // day
            let month = date.getMonth() + 1; // month
            let year = date.getFullYear(); // year

            day = day < 10 ? '0' + day : day; // if day is less than 2 digits i.e under 10 then add a zero at beginning with ternary 
            month = month < 10 ? '0' + month : month; // same with day but for the month.

            return `${day}/${month}/${year}`; // using f-string literal to display info when 'da()' is called.
        }
    }
};
</script>

<style scoped>
body {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
    font-family: Arial, sans-serif;
}

#search-employee {
    display: flex;
    align-items: center;
    margin-bottom: 20px;
}

input[type="number"] {
    padding: 8px;
    margin-right: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

button {
    padding: 8px 12px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #f0f0f0;
}

#displayBlock {
    background-color: rgb(206, 196, 196);
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

#companyDetails, #employeeDetails, #paymentDetails, #earnings, #deductions, #netPay {
    border: 1px solid black;
    padding: 10px;
    margin: 10px 0;
    border-radius: 5px;
    background-color: white;
}

#heading h2 {
    text-align: center;
}

.download-btn {
    background-color: #008CBA; /* Blue */
    color: white;
    margin-top: 10px;
}

.download-btn:hover {
    background-color: #007bb5;
}
</style>
