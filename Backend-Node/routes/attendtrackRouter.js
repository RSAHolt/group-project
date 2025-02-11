import express from "express"
import {getEmployeesCon,getEmployeeIdCon,addEmployeeCon,updateEmployeeCon,deleteEmployeeCon} from '../controller/attendController.js'


const router = express.Router()

router.get('/',getEmployeesCon )
router.get('/:id',getEmployeeIdCon)
router.post('/',addEmployeeCon )
router.patch('/:id',updateEmployeeCon )
router.delete('/:id',deleteEmployeeCon )


export default router