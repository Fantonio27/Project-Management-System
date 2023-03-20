import "../css/Dashboard.css"
import Sidebar from "../Components/User/Sidebar"
import Navbar from "../Components/User/Navbar"
import Footer from "../Components/Footer"
import { useEffect, useState } from "react";
import { Outlet, useLocation, useParams } from "react-router-dom";
import Fade from '@mui/material/Fade';
import { Snackbar, Alert } from "@mui/material";

export default function Dashboard(props) {

    const location = useLocation();
    const data = location.state;

    const [menu, setmenu] = useState(false)

    const MenuClick = () => {
        setmenu(prev => !prev)
    }

    const [notif, setnotif] = useState()

    const handleClose = () => {
        setnotif(false);
    };
    
    useEffect(()=> {
        setnotif(true)
    },[])

    return (
        <Fade in={true} timeout={1000}>
            <div className="Dashboard">
                <div className="Dashboard-Navbar">
                    <Navbar Menu={menu} MenuClick={MenuClick} data={data} />
                </div>
                <div className="Dashboard-Container">
                    <div className="Dashboard-Sidebar" >
                        <Sidebar Menu={menu} data={data} />
                    </div>
                    <div className="Dashboard-Box">
                        <Outlet context={data}></Outlet>
                        <Footer />
                    </div>
                </div>
                <Snackbar
                    open={notif}
                    autoHideDuration={2000}
                    onClose={handleClose}
                    // message="Login Successfull"
                    // action={action}
                >
                    <Alert onClose={handleClose} severity="success">
                        Login Successfull
                    </Alert>
                </Snackbar>
            </div>
        </Fade>
    )
}

/* <Link to="/Dashboard/Course">Hello</Link> */