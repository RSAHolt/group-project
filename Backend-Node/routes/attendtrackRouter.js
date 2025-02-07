import express from "express"
import {getAttendtrackCon,getAttendtrackIdCon,postAttendtrackIdCon,deleteAttendtrackIdCon} from '../controller/attendController.js'


const router = express.Router()


router.get('/',getAttendtrackCon )
router.get('/:id',getAttendtrackIdCon )
router.post('/:id',postAttendtrackIdCon )
router.delete('/:id',deleteAttendtrackIdCon )


export default router