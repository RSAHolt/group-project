import { pool } from "../config/config.js"
import validator from "validator"
import bcrypt from "bcrypt"
import jwt from "jsonwebtoken"
let password = 'hollyflakes'
let hashedPassword = '$2b$10$du7SyaWl9iHv6zn154pJy.8rV7To9VnVHoSfy3IwGS5vfHecPm/CW'
// const hashingFunction = async (pwd) =>{
//     console.log(pwd);
//     if (pwd == undefined) throw new Error('Password cannot be blank.')
//     let hashedPassword =await  bcrypt.hash(pwd,10)
//     console.log(hashedPassword);
    
    
// }
// hashingFunction(password)

// bcrypt.compare(password,pwd,(err,result)=>{
//     if (err) throw err
//     console.log();
    
// })

// const comparePass = async (pwd,hashP) =>{
//     let result = await bcrypt.compare(pwd,hashP);
//     console.log(result);
// }

// comparePass(password,hashedPassword)

const signToken = async (email)=>{
    let token = await jwt.sign({email:email},'lol1234567890lol',{expiresIn:'1d'});
    console.log(token);
    
}
signToken('luke@lifechoices.co.za')

const verifyToken = async (userToken,userSecretKey)=>{
    let result = await jwt.verify(userToken,userSecretKey)
    console.log(result);
    
}

 