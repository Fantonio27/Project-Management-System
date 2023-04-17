import '../../../css/Admin/Admin_Login.css'
import AdminLogo from '@mui/icons-material/PersonOutlineOutlined';
import On from '@mui/icons-material/RemoveRedEyeOutlined';
import Off from '@mui/icons-material/VisibilityOffOutlined';
import IconButton from '@mui/material/IconButton';
import Button from '@mui/material/Button';
import { useState } from 'react';
import Alert from '@mui/material/Alert';
import Fade from '@mui/material/Fade'
import { Link, useNavigate } from 'react-router-dom';

const logo_sx = {
    backgroundColor: "#1C82AD",
    borderRadius: "50px",
    padding: "15px",
    color: "white",
    fontSize: "50px"
}

const icon_sx = {
    position: "relative",
    bottom: "52px",
    right: "5px",
    alignSelf: "flex-end",
    cursor: "pointer",
}

const btn_sx = {
    width: "100%",
    backgroundColor: "#388E3C",
    border: "0px",
    padding: "12px 0px",
    borderRadius: "5px",
    color: "white",
    fontSize: "14px",
    letterSpacing: "1px",
    fontFamily: "'Poppins', sans-serif",
    transition: "0.3s",

    "&:hover": {
        backgroundColor: "#2e7d32"
    }
}


export default function Login() {

    const navigate = useNavigate()

    const LoginAdmin = (event) => {
        event.preventDefault()
        setnotif(true)
        setCounter(5)
    }

    const [showpass, setshowpass] = useState(false)

    const [notif, setnotif] = useState({
        Severity: "",
        Text: "",
        Show: false
    })

    const [Dataform, setDataform] = useState({
        Username: "",
        Password: ""
    })

    const login = (event) => {
        event.preventDefault()

        if (Dataform.Username == "" || Dataform.Password == "") {
            setnotif(() => ({
                Severity: "warning",
                Text: "Please fill in all the required fields.",
                Show: true
            }))

        } else if (Dataform.Username === "Admin123" && Dataform.Password === "password") {
            navigate("/Admin_Dashboard")

        } else {
            setnotif(() => ({
                Severity: "error",
                Text: "Invalid Username or Password!",
                Show: true
            }))

            setDataform((prev) => ({
                ...prev,
                Password: ""
            }))
        }
    }


    const handleclick = () => {
        setshowpass(prev => !prev)
    }

    const handlechange = (event) => {
        const { name, value } = event.target

        setDataform((prev) => ({
            ...prev,
            [name]: value
        }))
    }

    const notif_sx = {
        backgroundColor: notif.Severity == "warning" ? "rgba(255, 233, 70, 0.05)" : "rgba(211, 47, 47, 0.05)",
        width: "100%"
    }

    return (
        <div className="A_login">

            <form>
                <div className='A_login_container'>
                    <div className='A_login_form'>
                        <AdminLogo sx={logo_sx} />
                        <h1 className='A_login_h1'>Admin Login</h1>
                        <div className='notif'>
                            {notif.Show &&
                                <Fade in={notif.Show}>
                                    <Alert onClose={() => setnotif(e => ({ ...e, Show: false }))} variant="outlined" sx={notif_sx} severity={notif.Severity}>
                                        {notif.Text}
                                    </Alert>
                                </Fade>
                            }
                        </div>
                        <input
                            type="text"
                            className='A_login_username'
                            placeholder='Username'
                            name="Username"
                            value={Dataform.Username}
                            onChange={handlechange}
                        />

                        <input
                            type={showpass ? 'text' : 'password'}
                            className='A_login_password'
                            placeholder='Password'
                            name="Password"
                            value={Dataform.Password}
                            onChange={handlechange}
                        />
                        <IconButton sx={icon_sx} onClick={handleclick}>
                            {showpass ?
                                <On sx={{ color: '#6c757d' }} />
                                :
                                <Off sx={{ color: '#6c757d' }} />
                            }
                        </IconButton>
                        <Button sx={btn_sx} onClick={login}>Login</Button>
                    </div>
                </div>
            </form>
        </div>
    )
}

// <div className='notif'>
//                                 <p>{notif.Text}</p>
//                                 <Alert onClose={() => setnotif(e => ({ ...e, Show: false }))} variant="outlined" sx={{ backgroundColor: "white" }} severity={notif.Severity}>
//                                     {notif.Text}
//                                 </Alert>
//                                 <IconButton sx={{justifyContent: "flex-end"}}>
//                                     <CloseIcon sx={close_sx} onClick={(e)=>setnotif({...e, Show: false})}></CloseIcon>
//                                 </IconButton>
//                             </div>