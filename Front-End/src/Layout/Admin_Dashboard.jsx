import "../css/Admin_Dashboard.css"
import SideNavbar from "../Components/Admin/Admin_Sidebar"
import Main from "../Components/Admin/Admin_Main"
import Data_Table from "../Components/Admin/Data_Table"
import Footer from "../Components/Footer"
import { useState } from "react"

export default function Admin() {

    const [tab, settab] = useState({
        index: 0,
        text: "Dashboard"
    })

    function handlevalue (i, text) {
        settab(()=>({
            index: i,
            text: text
        }))
    }

    return (
        <div className="AdminDashboard">
            <div>
                <SideNavbar handleClick={handlevalue} index={tab.index}/>
            </div>
            <div className="AdminDashboard_Main">
                <Data_Table Title={tab.text}/>
                <Footer/>
            </div>
        </div>
    )
}