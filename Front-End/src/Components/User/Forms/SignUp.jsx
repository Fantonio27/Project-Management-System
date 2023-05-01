
import "../../../css/User/Forms/SignUp.css"
import Alert from '@mui/material/Alert';
import Button from '@mui/material/Button';
import RemoveRedEyeOutlinedIcon from '@mui/icons-material/RemoveRedEyeOutlined';
import VisibilityOffOutlinedIcon from '@mui/icons-material/VisibilityOffOutlined';
import { Link } from 'react-router-dom';
import { useEffect, useState } from "react"
import Logo from "../../../assets/Images/logo.png"
import { Navigate } from "react-router-dom";
import Checkbox from '@mui/material/Checkbox';
import { Zoom } from "@mui/material";
import { useNavigate } from "react-router-dom";
import IconButton from '@mui/material/IconButton';
import axios from "axios"

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
        LRNtxt: {
            text: "1",
        },
        // passchar: false,
        passchar: {
            text: "1",
            show: false
        },
        Emailtxt: false
    })

    const [showPassword, setShowPassword] = useState(false);
    const [showCPassword, setShowCPassword] = useState(false);

    const [repeat, setrepeat] = useState(false)
    const SignUp_submit = (event) => {
        event.preventDefault()
        const { FirstName, LastName, LRN, Email, Password, Confirm, Checked } = Dataform

        console.log(repeat)
        const email = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/
        var password_val = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$/

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

            setvaltext((prev) => ({
                ...prev,
                LRNtxt: {
                    text: "Please fill in this required field."
                },

                passchar: {
                    text: "Please fill in this required field.",
                    show: true
                }
            }))

        } else if (LRN.length < 12) {
            setvaltext((prev) => ({
                ...prev,
                LRNtxt: {
                    text: "Must be exact 12 numbers"
                },
                Confirmtxt: false
            }))

            setnotif((prev) => ({
                ...prev,
                LRN: LRN.length < 12 ? true : false,
            }))

        } else if (!email.test(Email)) {
            setvaltext((prev) => ({
                ...prev,
                Emailtxt: true
            }))

            setnotif((prev) => ({
                ...prev,
                Email: true
            }))

        } else if (!password_val.test(Password)) {
            setvaltext((prev) => ({
                ...prev,
                passchar: {
                    text: "Password should be contain:",
                    show: true
                }
            }))

            setnotif((prev) => ({
                ...prev,
                Password: true
            }))
        }
        else if (Password !== Confirm || Confirm !== Password) {
            setvaltext((prev) => ({
                ...prev,
                Confirmtxt: true,
                passchar: {
                    text: "Password should be contain:",
                    show: false
                },
            }))

            setnotif((prev) => ({
                ...prev,
                Confirm: Password !== Confirm ? true : false
            }))

        } else {
            axios.get(`http://localhost/recommendation_system/api/${Dataform.LRN}`).then(function (response) {
                console.log(response.data);
                if (response.data != false) {
                    setvaltext((prev) => ({
                        ...prev,
                        LRNtxt: {
                            text: "LRN already exists"
                        },
                    }))

                    setnotif((prev) => ({
                        ...prev,
                        LRN: true
                    }))
                } else {
                    axios.post('http://localhost/recommendation_system/api/user/Register.php/saves', Dataform).then(function (response) {
                        // console.log(response.data);
                        const data = {
                            LRN :  Dataform.LRN,
                            FIRSTNAME : Dataform.FirstName,
                            LASTNAME : Dataform.LastName,
                        };

                        window.localStorage.setItem('USER_DATA', JSON.stringify(data))

                        navigate("/Dashboard")
                    });
                }
            });
        }
    }

    const handlechange = (event) => {
        const { name, value, checked } = event.target
        const number = /^[0-9\b]+$/;
        const letter = /^[a-z A-Z \b]+$/;

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
        } else if (name == "Password") {
            setDataform((prev) => ({
                ...prev, [name]: value
            }));

            setvaltext((prev) => ({
                ...prev,
                passchar: {
                    show: false,
                    text: "Password should be contain:"
                }
            }))
        } else if (name == "Email" || name == "Confirm" || name == "Checked") {
            setDataform((prev) => ({
                ...prev, [name]: name == "Checked" ? checked : value
            }));
        }

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

            setvaltext((prev) => ({
                ...prev,
                LRNtxt: {
                    text: "Please fill in this required field."
                },
            }))
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
                            {valtext.LRNtxt.text}
                        </p>

                        <label className="Sign_label">Email Address</label>
                        <input
                            style={{
                                border: notif.Email ? " 1px solid rgb(255, 0, 0, 0.6)" : "",
                                boxShadow: notif.Email ? "rgb(255, 0, 0, 0.6) 0px 0px 0px 1px" : ""
                            }}
                            type="email"
                            className="Sign_text_box"
                            placeholder="Email Address"
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
                            {valtext.Emailtxt ? "Invalid Email Address(example@gmail.com)" : "Please fill in this required field."}
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
                                    placeholder="Password"
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
                                        opacity: notif.Password ? "1" : "0",
                                        textAlign: "justify"
                                    }}
                                >
                                    {valtext.passchar.text}
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
                                    placeholder="Confirm Password"
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
                        <div
                            className="label_sm"
                            style={{
                                opacity: notif.Password ? "1" : "0",
                                width: "47%",
                                height: notif.Password ? "60px" : "0px"
                            }}
                        >
                            {valtext.passchar ?
                                <ul style={{ marginLeft: 30, listStyleType: "circle" }}>
                                    <li>at least 8 characters</li>
                                    <li>at least one uppercase letter</li>
                                    <li>at least one lowercase letter</li>
                                    <li>one number</li>
                                </ul>
                                : ""}
                        </div>
                        <div className="Sign_Up_div" style={{ gap: 10 }}>
                            <Checkbox
                                name="Checked"
                                size="small"
                                sx={{ padding: "0px" }}
                                onClick={handlechange}
                                checked={Dataform.Checked}
                            />
                            <div>
                                <label className="Sign_label" style={{ margin: "0px" }}>I agree with the User Agreement and Privacy Policy.</label>
                                <p
                                    className="label_sm"
                                    style={{
                                        opacity: notif.Checked ? "1" : "0",
                                        margin: "5px 0px"
                                    }}
                                >
                                    Please fill in this required field.
                                </p>
                            </div>
                        </div>

                        <Button sx={SignUp_btn} className="Sign_btn" onClick={SignUp_submit}>Sign Up</Button>
                        <p className="Sign_p1">Already have an Account?<Link to="/" style={{ textDecoration: "none" }}> Log In</Link></p>
                    </div>
                </div>
            </form>
        </Zoom >
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