import { pool } from "../config/config.js"

const getPayslipId = async (id) => {
    let [data] = await pool.query("SELECT * FROM `modern_employees` LEFT JOIN `payroll` on `modern_employees`.`employee_id` = `payroll`.`employee_id` WHERE `modern_employees`.`employee_id` = ?",[id])
    return data
}

export {getPayslipId}
