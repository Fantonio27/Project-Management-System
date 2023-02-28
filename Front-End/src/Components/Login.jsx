import * as React from 'react';
import { useEffect, useState } from "react"
import Alert from '@mui/material/Alert';
import Fade from '@mui/material/Fade'
import Button from '@mui/material/Button';
import TextField from '@mui/material/TextField';
import IconButton from '@mui/material/IconButton';
import OutlinedInput from '@mui/material/OutlinedInput';
import InputLabel from '@mui/material/InputLabel';
import InputAdornment from '@mui/material/InputAdornment';
import FormControl from '@mui/material/FormControl';
import Visibility from '@mui/icons-material/Visibility';
import VisibilityOff from '@mui/icons-material/VisibilityOff';
import Zoom from '@mui/material/Zoom';

const Login_btn = {
    width: "137px",
    height: "44px",
    backgroundColor: "#008000",
    color: "white",
    fontSize: "16px",
    fontFamily: "'Lexend', sans-serif",
    border: "0px",
    cursor: "pointer",
    marginTop: "110px",
    boxShadow: "rgba(99, 99, 99, 0.2) 0px 2px 8px 0px",
    borderRadius: "4px",
    textTransform: "none",

    "&:hover":{
        backgroundColor: "#066506"
    }
}

const textbox = {
    marginBottom:"20px",
    fontFamily: "'Poppins', sans-serif",
    
}

export default function Login(){

    const [notif, setnotif] = useState({
        Severity: "",
        Text:"",
        Show: false 
    })

    const [Dataform,setDataform] = useState({
        LRN: "",
        Password:""
    })

    const [showPassword, setShowPassword] = React.useState(false);

    const login = (event) =>{
        event.preventDefault()

        if (Dataform.LRN == "" || Dataform.Password == ""){
            setnotif(()=> ({
                Severity: "warning",
                Text: "Please fill in all the required fields.",
                Show: true
            }))
            
        }else if(Dataform.LRN === "12345" && Dataform.Password === "Student12"){    
            console.log("Login Success")

        }else{
            setnotif(()=> ({
                Severity: "error",
                Text: "Your LRN or password is incorrect.",
                Show: true    
            }))

            setDataform((prev)=> ({
                ...prev,
                Password: ""
            }))
        }
    }

    const handlechange = (event) =>{
        const {name, value } =  event.target

        setDataform((prev) => ({
            ...prev,
            [name]: value
        }))   
    }

    const handleClickShowPassword = () => {
        setShowPassword((show) => !show);
    }

    return(
        <div className="Login">
            <div className="Login--container">
                <div className="Login--topbox"></div>
                
                <Zoom in={true} timeout={1000}>
                    <form>
                        <div className="Login--box">
                            <img src="../logo.png" className="Login--logo"></img>

                            <div className="Login--notifbox" >
                                {notif.Show &&
                                    <Fade in={notif.Show}>
                                        <Alert onClose={()=>setnotif(e=> ({...e, Show: false}))} variant="outlined" sx={{backgroundColor:"white"}} severity={notif.Severity}>
                                            {notif.Text}
                                        </Alert>
                                    </Fade>    
                                }
                            </div>
                            
                            <TextField 
                                name="LRN"
                                type="number"
                                label="Learning Reference No. (LRN)" 
                                variant="outlined" 
                                className="Login-input-text"
                                sx={textbox}
                                color="success"
                                value={Dataform.LRN}
                                pattern="[0-9]*"
                                onChange={handlechange}
                            />

                            <FormControl className="Login-input-text" variant="outlined" >
                                <InputLabel color="success">Password</InputLabel>
                                <OutlinedInput
                                    name="Password"
                                    type={showPassword ? 'text' : 'password'}
                                    endAdornment={
                                        <InputAdornment position="end">
                                            <IconButton
                                                onClick={handleClickShowPassword}
                                                edge="end"
                                            >
                                                {showPassword ? <VisibilityOff /> : <Visibility />}
                                            </IconButton>
                                        </InputAdornment>
                                    }
                                    label="Password"
                                    color="success"
                                    value={Dataform.Password}
                                    onChange={handlechange}
                                />
                            </FormControl>
                                
                            <p>No account? <a href="/">Sign in</a></p>
                                
                            <Button variant="contained" sx={Login_btn} onClick={login}>Login</Button>       
                        </div>
                    </form>
                </Zoom>
            </div>
        </div>
    )
}


//<button className="Login-btn" onClick={login}>Login</button> 
//<input type="text" className="Login-input-text"/>
//<label>Learning Reference No. (LRN)</label>
//   <label>Password</label>
/*
 <TextField 
                            name="Password"
                            label="Password" 
                            variant="outlined" 
                            className="Login-input-text" 
                            type="password" 
                            color="success"
                            value={Dataform.Password}
                            onChange={handlechange}
                        />
                        
                        
                        
                        
                        {notif == "show"?
                                <Fade in={notif == "show"}>
                                    <Alert onClose={()=>setnotif(e=> "hide")} variant="outlined" sx={{backgroundColor:"white"}} severity="error">
                                        Your LRN or password is incorrect.
                                    </Alert>
                                </Fade>
                            :
                                <Fade in={notif == "empty"}>
                                    <Alert  onClose={() => {setnotif(e=> "hide")}} variant="outlined" severity="warning">
                                        Please fill in all required fields.
                                    </Alert>
                                </Fade>
                            }
                                const alertbox = () => {
        if(notif == "show"){
            return <Fade in={notif == "show"}>
                        <Alert onClose={()=>setnotif(e=> "hide")} variant="outlined" sx={{backgroundColor:"white"}} severity="error">
                            Your LRN or password is incorrect.
                        </Alert>
                    </Fade>
        }else if (notif == "empty"){
            return  <Fade in={notif == "empty"}>
                        <Alert  onClose={() => {setnotif(e=> "hide")}} variant="outlined" severity="warning">
                            Please fill in all required fields.
                        </Alert>
                    </Fade>
        }
    }
                            
                           InvalidName: "error",
        InvalidText: "Your LRN or password is incorrect.",
        WarningName: "warning",
        WarningText: "Please fill in all required fields.",       InvalidName: "error",
        InvalidText: "Your LRN or password is incorrect.",
        WarningName: "warning",
        WarningText: "Please fill in all required fields.",        
                            */