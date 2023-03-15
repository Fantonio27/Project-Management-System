import "../css/Dashboard.css"
import Sidebar from "../Components/User/Sidebar"
import Navbar from "../Components/User/Navbar"
import Footer from "../Components/Footer"
import { useEffect, useState } from "react";
import { Outlet, useLocation, useParams } from "react-router-dom";
import Fade from '@mui/material/Fade';

export default function Dashboard(props) {


    const location = useLocation();
    const data = location.state;

    // console.log(data)

    const [menu, setmenu] = useState(false)

    const MenuClick = () => {
        setmenu(prev => !prev)
    }
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
                        <Outlet data={data}></Outlet>
                        <Footer />
                    </div>
                </div>
            </div>
        </Fade>
    )
}

/* <Link to="/Dashboard/Course">Hello</Link> */