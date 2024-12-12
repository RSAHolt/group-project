<template >
    <div id="search employee">
            <input  type="number" v-model="num" name="empid" id="empid">
            <button @click="switcha">Search</button>
        
    </div>
    <div v-if="bool" id="displayBlock" >
        <div v-for="item,index in payson.payrollData" :key="item"  >
            <div v-if="item.employeeId == num" >
            <div id="companyDetails">
               
            </div>
            <div id="employeeDetails">
               Employee ID: {{item.employeeId}}
                
            </div>
            <div id="paymentDetails">
                
            </div>
            <div id="earnings">
                
            </div>
            <div id="deductions">
                
            </div>
        </div>
        </div>

    </div>

</template>
<script>
import json from '@/data/payroll_data.json'
export default {
    value:{
        spice: 0
    },
    data() {
        return {
            payson:json,
            bool:true,
        }
    },
    methods:{
        switcha(){
            this.bool =!this.bool
            this.bool=!this.bool
        }
    },
    computed:{
        displayp(){
           let p = document.getElementById('empid')
            return p.value
        }
    }
}
</script>
<style >
    
</style>
