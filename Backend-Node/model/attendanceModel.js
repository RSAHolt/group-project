import { pool } from "../config/config.js"

const getEmployees = async () => {
    let [data] = await pool.query("SELECT * FROM `modern_employees`")
    return data
};


const getEmployeeId = async (id) => {
    let [data] = await pool.query("SELECT * FROM `modern_employees` WHERE `modern_employees`.`employee_id` = ?",[id])
    return data
};

const insertEmployee= async(name, position, department, salary, contact) => {
    await pool.query("INSERT INTO `modernsolutions_db`.`modern_employees` (name, position, department, salary, contact) VALUES (?, ?,?,?,?)",[ name, position, department, salary, contact])
 };

 const deleteEmployee = async(id) => {
    await pool.query("DELETE FROM `modernsolutions_db`.`modern_employees` WHERE employee_id = ?;",[id])
};

const updateEmployee = async(name, position, department, salary, contact,employee_id) => {
    await pool.query("UPDATE `modernsolutions_db`.`modern_employees` SET name = ?, position = ?, department = ?, salary = ?, contact =? WHERE employee_id = ?",[name, position, department, salary, contact, employee_id])
    return {name, position, department, salary, contact, employee_id}
};
export {getEmployees,getEmployeeId,insertEmployee,deleteEmployee,updateEmployee}
