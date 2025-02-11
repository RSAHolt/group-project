import {getEmployees,getEmployeeId,insertEmployee,deleteEmployee,updateEmployee } from  '../model/attendanceModel.js'

const getEmployeesCon = async(req,res)=>{
    res.json({employees:await getEmployees()})
}

const getEmployeeIdCon = async(req,res)=>{
    res.json({employees:await getEmployeeId(req.params.id)})
}

 const addEmployeeCon = async (req,res)=>{
    let {name, position, department, salary, contact} = req.body
    res.json({employees:await insertEmployee(name, position, department, salary, contact)})
 }

 const updateEmployeeCon = async (req,res)=>{
   console.log(req.params);
   
   let {id}=req.params
   let {name, position, department, salary,contact} = req.body
    res.json({employees:await updateEmployee(name, position, department, salary, contact,id)})
 }

 const deleteEmployeeCon = async(req,res)=>{
    res.json({employees:await deleteEmployee(req.params.id)})
 }

 export {getEmployeesCon,getEmployeeIdCon,addEmployeeCon,updateEmployeeCon,deleteEmployeeCon}