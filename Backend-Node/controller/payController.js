import {getPayslipId} from  '../model/payrollModel.js'

const getPayslipIdCon = async (req,res) => {
    res.json({payroll:await getPayslipId(req.params.id)})
}

export {getPayslipIdCon}