import "../css/Dashboard.css"
import Sidebar from "../Components/User/Sidebar"
import Navbar from "../Components/User/Navbar"
import Footer from "../Components/Footer"
import { useState } from "react";
import {Outlet } from "react-router-dom";

export default function Dashboard(props) {

    const [menu, setmenu] = useState(false)

    const MenuClick = () => {
        setmenu(prev => !prev)
    }

    const Hello = () => {
        console.log("Hello")
    }
    return (
        <>
            <div className="Dashboard">
                <div className="Dashboard-Navbar">
                    <Navbar Menu={menu} MenuClick={MenuClick} />
                </div>
                <div className="Dashboard-Container">
                    <div className="Dashboard-Sidebar" >
                        <Sidebar Menu={menu} handleClick={Hello} />
                    </div>
                    <div className="Dashboard-Box">
                        <Outlet></Outlet>
                        <Footer />
                    </div>
                </div>
            </div>
        </>
    )
}

/* <Link to="/Dashboard/Course">Hello</Link> */