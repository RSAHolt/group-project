import express from 'express'
import cookieParser from 'cookie-parser'
import bodyParser from 'body-parser'
import csurf from 'csurf'
import cors from 'cors'
// import routes that we exported
import payRouter from './routes/payRouter.js'

const PORT = process.env.PORT ||3000
const app = express()
app.use(cors({
    origin:'http://localhost:8080'
}))
app.use(express.json())
// path , imported file
app.use('/pay', payRouter)

app.listen(PORT,()=>{
console.log('http://localhost:'+PORT);
})
