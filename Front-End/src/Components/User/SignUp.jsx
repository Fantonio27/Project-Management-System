
import "../../css/SignUp.css"
import Alert from '@mui/material/Alert';
import Button from '@mui/material/Button';
import RemoveRedEyeOutlinedIcon from '@mui/icons-material/RemoveRedEyeOutlined';
import VisibilityOffOutlinedIcon from '@mui/icons-material/VisibilityOffOutlined';
import { Link } from 'react-router-dom';
import { useState } from "react"
import Logo from "../../assets/Images/logo.png"
import { Navigate } from "react-router-dom";
import Checkbox from '@mui/material/Checkbox';
import { Zoom } from "@mui/material";
import { useNavigate } from "react-router-dom";
import IconButton from '@mui/material/IconButton';

const SignUp_btn = {
    padding: "10px 0px",
    backgroundColor: "rgb(56, 142, 60)",
    fontFamily: "'Poppins', sans-serif",
    fontSize: "15px",
    boxShadow: "rgba(149, 157, 165, 0.2) 0px 8px 24px",
    borderRadius: "20px",
    textTransform: "none",
    margin: "35px 0px 15px",
    color: "white",
    letterSpacing: "1px",
    border: "0px",

    "&:hover": {
        backgroundColor: "#2e7d32"
    }
}

const eye_sx = {
    position: "absolute",
    right: 0,
    bottom: 23,
    color: "#6c757d"
}

export default function Login() {

    const navigate = useNavigate();

    const repeat = "1234567"

    const [notif, setnotif] = useState({
        FirstName: false,
        LastName: false,
        LRN: false,
        Email: false,
        Password: false,
        Confirm: false,
        Checked: false
    })

    const [Dataform, setDataform] = useState({
        FirstName: "",
        LastName: "",
        LRN: "",
        Email: "",
        Password: "",
        Confirm: "",
        Checked: false
    })

    const [valtext, setvaltext] = useState({
        Confirmtxt: false,
        LRNtxt: false,
    })

    const [showPassword, setShowPassword] = useState(false);
    const [showCPassword, setShowCPassword] = useState(false);

    const SignUp_validation = (event) => {
        event.preventDefault()

        const { FirstName, LastName, LRN, Email, Password, Confirm, Checked } = Dataform

        if (FirstName == "" || LastName == "" || LRN == "" || Email == "" || Password == "" || Confirm == "" || Checked == false) {
            setnotif(() => ({
                FirstName: FirstName == "" ? true : false,
                LastName: LastName == "" ? true : false,
                LRN: LRN == "" ? true : false,
                Email: Email == "" ? true : false,
                Password: Password == "" ? true : false,
                Confirm: Confirm == "" ? true : false,
                Checked: Checked ? false : true
            }))
        }
        // }else if (){

        // }
        else if (Password !== Confirm) {
            setvaltext((prev) => ({
                ...prev,
                Confirmtxt: true
            }))

            setnotif((prev) => ({
                ...prev,
                Confirm: Password !== Confirm ? true : false
            }))
        }
        else {
            navigate("/Dashboard");
        }
    }

    const handlechange = (event) => {
        const { name, value, checked } = event.target
        const number = /^[0-9\b]+$/;
        const letter = /^[a-z\b]+$/;

        if ((name == "FirstName" || name == "LastName")) {
            if (value === "" || letter.test(value)) {
                setDataform((prev) => ({
                    ...prev, [name]: value
                }));
            }
        } else if (name == "LRN") {
            if (value === "" || number.test(value)) {
                setDataform((prev) => ({
                    ...prev, [name]: value
                }));
            }
        } else if (name == "Email" || name == "Password" || name == "Confirm" || name == "Checked") {
            setDataform((prev) => ({
                ...prev, [name]: name == "Checked" ? checked : value
            }));
        }

        // if (!checked){
        //     setnotif((prev) => ({
        //         ...prev,
        //         [name]: false
        //     }));

        // }
        if (value != "") {
            setnotif((prev) => ({
                ...prev,
                [name]: false
            }));
        }
        else {
            setnotif((prev) => ({
                ...prev,
                [name]: true
            }));

        }
    }

    const handleClickShowPassword = () => {
        setShowPassword((show) => !show);
    }

    return (
        <Zoom in={true} timeout={1000}>
            <form>
                <div className="Sign_Up_box">
                    <img src={Logo} className="Sign_logo"></img>
                    <h1 className="Sign_h1">Sign Up</h1>
                    <p className="Sign_p">Create your account now</p>
                    <div className="Sign_Up_form">
                        <div className="Sign_Up_div">
                            <div>
                                <label className="Sign_label" >First Name</label>
                                <input
                                    style={{
                                        border: notif.FirstName ? "1px solid rgb(255, 0, 0, 0.6)" : "",
                                        boxShadow: notif.FirstName ? "rgb(255, 0, 0, 0.6) 0px 0px 0px 1px" : ""
                                    }}
                                    type="text"
                                    className="Sign_text_box"
                                    placeholder="First name"
                                    name="FirstName"
                                    value={Dataform.FirstName}
                                    onChange={handlechange}
                                    maxLength={21}
                                />
                                <p
                                    className="label_sm"
                                    style={{
                                        opacity: notif.FirstName ? "1" : "0"
                                    }}
                                >
                                    Please fill in this required fields.
                                </p>
                            </div>
                            <div>
                                <label className="Sign_label">Last Name</label>
                                <input
                                    style={{
                                        border: notif.LastName ? "1px solid rgb(255, 0, 0, 0.6)" : "",
                                        boxShadow: notif.LastName ? "rgb(255, 0, 0, 0.6) 0px 0px 0px 1px" : ""
                                    }}
                                    type="text"
                                    className="Sign_text_box"
                                    placeholder="Last name"
                                    name="LastName"
                                    value={Dataform.LastName}
                                    onChange={handlechange}
                                    maxLength={16}
                                />
                                <p
                                    className="label_sm"
                                    style={{
                                        opacity: notif.LastName ? "1" : "0"
                                    }}
                                >  Please fill in this required fields.
                                </p>
                            </div>
                        </div>

                        <label className="Sign_label">Learning Reference No. (LRN)</label>
                        <input
                            style={{
                                border: notif.LRN ? "1px solid rgb(255, 0, 0, 0.6)" : "",
                                boxShadow: notif.LRN ? "rgb(255, 0, 0, 0.6) 0px 0px 0px 1px" : ""
                            }}
                            type="text"
                            className="Sign_text_box"
                            placeholder="Learning Reference No."
                            maxLength={12}
                            name="LRN"
                            value={Dataform.LRN}
                            onChange={handlechange}
                        />
                        <p
                            className="label_sm"
                            style={{
                                opacity: notif.LRN ? "1" : "0"
                            }}
                        >
                            Please fill in this required field.
                        </p>

                        <label className="Sign_label">Email</label>
                        <input
                            style={{
                                border: notif.Email ? " 1px solid rgb(255, 0, 0, 0.6)" : "",
                                boxShadow: notif.Email ? "rgb(255, 0, 0, 0.6) 0px 0px 0px 1px" : ""
                            }}
                            type="email"
                            className="Sign_text_box"
                            placeholder="example@gmail.com"
                            name="Email"
                            value={Dataform.Email}
                            onChange={handlechange}
                            maxLength={62}
                        />
                        <p
                            className="label_sm"
                            style={{
                                opacity: notif.Email ? "1" : "0"
                            }}
                        >
                            Please fill in this required field.
                        </p>

                        <div className="Sign_Up_div">
                            <div style={{ position: "relative" }}>
                                <label className="Sign_label">Password</label>
                                <input
                                    style={{
                                        border: notif.Password ? "1px solid rgb(255, 0, 0, 0.6)" : "",
                                        boxShadow: notif.Password ? "rgb(255, 0, 0, 0.6) 0px 0px 0px 1px" : ""
                                    }}
                                    type={showPassword ? "text" : "password"}
                                    className="Sign_text_box"
                                    placeholder="At least 8 characters"
                                    name="Password"
                                    value={Dataform.Password}
                                    onChange={handlechange}
                                    maxLength={16}
                                />
                                <IconButton sx={eye_sx} onClick={() => setShowPassword(e => !e)}>
                                    {showPassword ? <VisibilityOffOutlinedIcon /> : <RemoveRedEyeOutlinedIcon />}
                                </IconButton>
                                <p
                                    className="label_sm"
                                    style={{
                                        opacity: notif.Password ? "1" : "0"
                                    }}
                                >
                                    Please fill in this required field.
                                </p>
                            </div>

                            <div style={{ position: "relative" }}>
                                <label className="Sign_label">Confirm Password</label>
                                <input
                                    style={{
                                        border: notif.Confirm ? "1px solid rgb(255, 0, 0, 0.6)" : "",
                                        boxShadow: notif.Confirm ? "rgb(255, 0, 0, 0.6) 0px 0px 0px 1px" : ""
                                    }}
                                    type={showCPassword ? "text" : "password"}
                                    className="Sign_text_box"
                                    placeholder="At least 8 characters"
                                    name="Confirm"
                                    value={Dataform.Confirm}
                                    onChange={handlechange}
                                    maxLength={16}
                                />
                                <IconButton sx={eye_sx} onClick={() => setShowCPassword(e => !e)}>
                                    {showCPassword ? <VisibilityOffOutlinedIcon /> : <RemoveRedEyeOutlinedIcon />}
                                </IconButton>
                                <p
                                    className="label_sm"
                                    style={{
                                        opacity: notif.Confirm ? "1" : "0"
                                    }}
                                >
                                    {valtext.Confirmtxt ? "Password did not match" : "Please fill in this required field."}
                                </p>
                            </div>
                        </div>
                        <div className="Sign_Up_div" style={{ gap: 10, marginTop: "15px" }}>
                            <Checkbox
                                name="Checked"
                                size="small"
                                sx={{ padding: "0px" }}
                                onClick={handlechange}
                                checked={Dataform.Checked}
                            />
                            <label className="Sign_label" style={{ margin: "0px" }}>I agree with the User Agreement and Privacy Policy.</label>
                        </div>
                        <p
                            className="label_sm"
                            style={{
                                opacity: notif.Checked ? "1" : "0"
                            }}
                        >
                            Please fill in this required field.
                        </p>

                        <Button sx={SignUp_btn} className="Sign_btn" onClick={SignUp_validation}>Sign Up</Button>
                        <p className="Sign_p1">Already have an Account?<Link to="/" style={{ textDecoration: "none" }}> Log In</Link></p>
                    </div>
                </div>
            </form>
        </Zoom>
    )
}

//Validation
        // if (value === "" || letter.test(value)) {
        //     setDataform((prev) => ({
        //         ...prev, [name]: value
        //     }));

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