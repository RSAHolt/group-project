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
</template>

<script>
import json from '@/data/payroll_data.json';

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
}
</style>
