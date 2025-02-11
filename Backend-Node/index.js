import express from 'express'
import cookieParser from 'cookie-parser'
import bodyParser from 'body-parser'
import csurf from 'csurf'
import cors from 'cors'
// import routes that we exported
import userRoutes from './routes/userRoutes.js';
import payRouter from './routes/payRouter.js'
import attendtrackRouter from './routes/attendtrackRouter.js'
import authenticateJWT from './middleware/authMiddleware.js'
const PORT = process.env.PORT ||3000
const app = express()
app.use(cors({
    origin:'http://localhost:8080'
}))
app.use(express.json())
// path , imported file
app.use('/pay', payRouter) 
app.use('/attendtrack',attendtrackRouter)
app.use('/users', userRoutes);

app.get('/protected', authenticateJWT, (req, res) => {
    res.json({ message: 'This is a protected route', user: req.user });
});

app.listen(PORT,()=>{
console.log('http://localhost:'+PORT);
})
