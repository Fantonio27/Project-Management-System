import "../../css/Admin_Sidebar.css"
import ArrowBackIosNewOutlinedIcon from '@mui/icons-material/ArrowBackIosNewOutlined';
import ArrowForwardIosOutlinedIcon from '@mui/icons-material/ArrowForwardIosOutlined';
import ListItemButton from '@mui/material/ListItemButton';
import InterestsOutlinedIcon from '@mui/icons-material/InterestsOutlined';
import ArticleOutlinedIcon from '@mui/icons-material/ArticleOutlined';
import PeopleAltOutlinedIcon from '@mui/icons-material/PeopleAltOutlined';
import GridViewOutlinedIcon from '@mui/icons-material/GridViewOutlined';
import DescriptionOutlinedIcon from '@mui/icons-material/DescriptionOutlined';
import ReceiptLongOutlinedIcon from '@mui/icons-material/ReceiptLongOutlined';
import { useState } from "react";
import Logo from "../../assets/Images/logo.png"
import { Link } from "react-router-dom";

export default function Admin_Sidebar(props) {

    const [open, setopen] = useState(true)

    let val;

    const Menu = ["Dashboard", "Student Information", "Courses", "Interests", "Entrance Exam", "Interest Assessment", "Student Results"]
    
    const Icon = [
        <GridViewOutlinedIcon />,
        <PeopleAltOutlinedIcon />,
        <ArticleOutlinedIcon />,
        <InterestsOutlinedIcon />,
        <DescriptionOutlinedIcon />,
        <GridViewOutlinedIcon />,
        <ReceiptLongOutlinedIcon />
    ]

    const icon_sx = {
        color: "white",
        fontSize: "16px",
        cursor: "pointer",
        padding: "5px",
        borderRadius: "30px",

        "&:hover": {
            backgroundColor: "rgb(46, 125, 50,0.1)"
        }
    }

    const logo_sx = {
        width: open ? "120px" : "80px",
        height: open ? "120px" : "80px"
    }

    const handleclick = () => {
        setopen(prev => !prev)
    }

    return (
        <div className="Admin_Sidebar" style={{ width: open ? "300px" : "100px" }}>
            <div className="Admin_Sidebar_container">
                <div className="Admin_Sidebar_Arrow" style={{alignSelf : open? "flex-end" :"center" }}>
                    {open ?
                        <ArrowBackIosNewOutlinedIcon sx={icon_sx} onClick={handleclick} />
                        :
                        <ArrowForwardIosOutlinedIcon sx={icon_sx} onClick={handleclick} />
                    }
                </div>
                <div className="Admin_Sidebar_Avatar_container">
                    <img src={Logo} className="Admin_Sidebar_Logo" style={logo_sx}></img>
                    <h1 className="Admin_Sidebar_Avatar_h1">{open ? "Admin Panel" : ""} </h1>
                    
                    <Link to="/" className="Admin_Sidebar_Avatar_a">{open ? "Log Out" : ""}</Link>
                </div>
                <div className="Admin_Sidebar_Menu_container">
                    <p className="Admin_Sidebar_Menu_title">{open ? "Menu" : " "}</p>
                    {Menu.map((text, index) => (
                        val = props.index == index,
                        <ListItemButton key={index} sx={{
                            margin: "5px 0px",
                            borderRadius: "20px",
                            width: "100%",
                            justifyContent: open ? "initial" : "center",
                            backgroundColor: val ? "rgb(44, 110, 73)" : "inherit",
                            fontWeight: val ? "600" : "",
                            "&:hover": {
                                backgroundColor: "rgb(44, 110, 73,0.5)"
                            }
                        }} 
                            onClick={()=>props.handleClick(index,text)}
                        >
                            {Icon[index]}{open ? <p className="Admin_Sidebar_Menu_p">{text}</p> : ""}
                        </ListItemButton>
                    ))}
                </div>
            </div>
        </div>
    )
}