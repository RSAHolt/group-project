import express from "express"
import {getPayslipIdCon} from '../controller/payController.js'


const router = express.Router()


router.get('/:id',getPayslipIdCon )


export default router