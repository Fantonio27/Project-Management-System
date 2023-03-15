import { useState } from "react"
import Alert from '@mui/material/Alert';
import Button from '@mui/material/Button';
import TextField from '@mui/material/TextField';
import IconButton from '@mui/material/IconButton';
import OutlinedInput from '@mui/material/OutlinedInput';
import InputLabel from '@mui/material/InputLabel';
import InputAdornment from '@mui/material/InputAdornment';
import FormControl from '@mui/material/FormControl';
import RemoveRedEyeOutlinedIcon from '@mui/icons-material/RemoveRedEyeOutlined';
import VisibilityOffOutlinedIcon from '@mui/icons-material/VisibilityOffOutlined';
import { Link, useNavigate } from 'react-router-dom';
import Logo from "../../assets/Images/logo.png"
import { Zoom } from "@mui/material";
import '../../css/User_login.css'

const Login_btn = {
    width: "100%",
    backgroundColor: "#388E3C",
    color: "white",
    fontSize: "16px",
    fontFamily: "'Poppins', sans-serif",
    border: "0px",
    marginTop: "110px",
    boxShadow: "rgba(99, 99, 99, 0.2) 0px 2px 8px 0px",
    borderRadius: "5px",
    textTransform: "none",
    letterSpacing: "1.5px",

    "&:hover": {
        backgroundColor: "#2e7d32"
    }
}

const textbox = {
    margin: "10px 0px 5px",
    fontFamily: "'Poppins', sans-serif",
}

export default function Login(props) {

    const navigate = useNavigate()

    const [notif, setnotif] = useState({
        Severity: "",
        Show: false,
        LRN: false,
        Password: false,

    })

    const [Dataform, setDataform] = useState({
        LRN: "",
        Password: ""
    })

    const [showPassword, setShowPassword] = useState(false);

    const [valtext, setvaltext] = useState({
        LRN: false,
        Password: false
    })

    const login_validation = (event) => {
        event.preventDefault()

        const {LRN, Password} = Dataform

        if (LRN == "" || Password == "") {
            setnotif(() => ({
                Show: false,
                LRN: Dataform.LRN == "" ? true : false,
                Password: Dataform.Password == "" ? true : false
            }))
        } else if (LRN.length !== 12 || Password.length < 8) {
            setvaltext(()=>({
                LRN: LRN.length !== 12? true : false,
                Password: Password.length < 8? true : false
            }))

            setnotif(() => ({
                LRN: LRN.length !== 12? true : false,
                Password: Password.length < 8? true : false
            }))

        } else if (LRN === "123456789012" && Password === "Student12") {
            navigate("/Dashboard");
        } else {
            setnotif(() => ({
                Show: true,
                LRN: false,
                Password: false
            }))

            setDataform((prev) => ({
                ...prev,
                Password: ""
            }))
        }
    }

    const handlechange = (event) => {
        const { name, value } = event.target
        const number = /^[0-9\b]+$/;

        if (name === "LRN") {
            if (value === "" || number.test(value)) {
                setDataform((prev) => ({
                    ...prev, LRN: value
                }));
                if (value != "") {
                    setnotif((prev) => ({
                        ...prev,
                        Show: false,
                        [name]: false
                    }));
                } else {
                    setnotif((prev) => ({
                        ...prev,
                        Show: false,
                        [name]: true
                    }));
                }
            }
        } else if (name === "Password") {
            setDataform((prev) => ({
                ...prev,
                Password: value,
            }));

            if (value != "") {
                setnotif((prev) => ({
                    ...prev,
                    Show: false,
                    [name]: false
                }));
            } else {
                setnotif((prev) => ({
                    ...prev,
                    Show: false,
                    [name]: true
                }));
            }
        }
    }

    const handleClickShowPassword = () => {
        setShowPassword((show) => !show);
    }

    const notif_sx = {
        margin: notif.Show ? "20px" : "30px",
        height: notif.Show ? "50px" : "0px"
    }

    return (
        <Zoom in={true} timeout={1000}>
            <form>
                <div className="Login_box">
                    <img src={Logo} className="Login_logo"></img>
                    <h1 className="Login_box_h1">Student Login</h1>
                    <div className="Login_notifbox" style={notif_sx}>
                        <Alert onClose={() => setnotif(e => ({ ...e, Show: false }))} variant="outlined" sx={{ backgroundColor: "#d32f2f0d" }} severity="error">
                            Incorrect LRN or Password.
                        </Alert>
                    </div>
                    <TextField
                        error={notif.LRN ? true : false}
                        name="LRN"
                        label="Learning Reference No. (LRN)"
                        variant="outlined"
                        className="Login_input_text"
                        sx={textbox}
                        color="success"
                        value={Dataform.LRN}
                        pattern="[0-9]*"
                        onChange={handlechange}
                    />
                    <p className="label_sm" style={{
                        paddingBottom: notif.LRN ? "2px" : "0px",
                        height: notif.LRN ? "12px" : "0px"
                    }}>
                        {valtext.LRN? "Must be exact 12 numbers" :"Please fill in this required fields."}
                    </p>
                    <FormControl className="Login_input_text" sx={textbox} variant="outlined" >
                        <InputLabel color="success" >Password</InputLabel>
                        <OutlinedInput
                            error={notif.Password ? true : false}
                            name="Password"
                            type={showPassword ? 'text' : 'password'}
                            endAdornment={
                                <InputAdornment position="end">
                                    <IconButton
                                        onClick={handleClickShowPassword}
                                        edge="end"
                                    >
                                        {showPassword ? <VisibilityOffOutlinedIcon /> : <RemoveRedEyeOutlinedIcon />}
                                    </IconButton>
                                </InputAdornment>
                            }
                            label="Password"
                            color="success"
                            value={Dataform.Password}
                            onChange={handlechange}
                        />
                    </FormControl>
                    <p className="label_sm" style={{
                        paddingBottom: notif.Password ? "2px" : "0px",
                        height: notif.Password ? "12px" : "0px"
                    }}>
                        {valtext.Password? "Must be atleast 8 characters":"Please fill in this required fields."}
                    </p>
                    <Button variant="contained" sx={Login_btn} onClick={login_validation}>Login</Button>
                    <p className='Login_box_p'>Dont have an account?<Link to="/Sign_Up" style={{ textDecoration: "none" }}> Sign up</Link></p>
                </div>
            </form>
        </Zoom>
    )
}

//Validation
// if (value !== "") {
        //     if (name == "LRN" && number.test(value)) {
        //         setDataform((prev) => ({
        //             ...prev, [name]: value
        //         }));
        //     } else if (name == "Password") {
        //         setDataform((prev) => ({
        //             ...prev, [name]: value
        //         }));
        //     }

        //     if (value != "") {
        //         setnotif((prev) => ({
        //             ...prev,
        //             [name]: false
        //         }));
        //     } else {
        //         setnotif((prev) => ({
        //             ...prev,
        //             [name]: true
        //         }));
        //     }
        // }