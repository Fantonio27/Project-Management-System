import { Link, Routes, useLocation } from "react-router-dom"
import "../css/Dashboard.css"
import Main from "../Components/Main"
import Profile from '../Components/User_Profile'
import Sidebar from "../Components/Sidebar"
import Navbar from "../Components/Navbar"
import Footer from "../Components/Footer"
import { useState } from "react";

export default function Dashboard() {
    
    const [menu, setmenu] = useState(false)

    const MenuClick = () =>{
        setmenu(prev => !prev)
    }

    const Hello = () => {
        console.log("Hello")
    }
    return (
        <div className="Dashboard">
            <div className="Dashboard-Navbar">
                <Navbar Menu={menu} MenuClick={MenuClick}/> 
            </div>
            <div className="Dashboard-Container">
                <div className="Dashboard-Sidebar" >
                    <Sidebar Menu={menu} handleClick={Hello}/>
                </div>
                <div className="Dashboard-Box">
                    <Main></Main>
                    <Footer></Footer>
                </div>
            </div>
            
        </div>
    )
}

/* <Link to="/Dashboard/Course">Hello</Link> */