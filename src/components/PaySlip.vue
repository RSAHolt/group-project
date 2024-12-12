<template >
    <div id="search employee">
            <input :value="spice" type="number" name="empid" id="empid">
            <button @click="switcha">Search</button>
        
    </div>
    <div v-if="bool" id="displayBlock" >

        <div id="companyDetails">
            test
        </div>
        <div id="employeeDetails">
            one
        </div>
        <div id="paymentDetails">
            {{ payson.payrollData[spice]}}
        </div>
        <div id="earnings">
            
        </div>
        <div id="deductions">
            
        </div>

    </div>

</template>
<script>
import json from '@/data/payroll_data.json'
export default {
    value:{
        spice: Number
    },
    data() {
        return {
            payson:json,
            bool:false
        }
    },
    methods:{
        switcha(){
            this.bool =true
        }
    }
}
</script>
<style >
    
</style>
