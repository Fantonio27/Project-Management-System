import "../../css/Admin/Sidebar.css"
import ListItemButton from '@mui/material/ListItemButton';
import { useState } from "react";
import { Link } from "react-router-dom";
import SignalCellularAltRoundedIcon from '@mui/icons-material/SignalCellularAltRounded';
import TaskRoundedIcon from '@mui/icons-material/TaskRounded';
import ArticleRoundedIcon from '@mui/icons-material/ArticleRounded';
import FeedRoundedIcon from '@mui/icons-material/FeedRounded';
import FolderSharedRoundedIcon from '@mui/icons-material/FolderSharedRounded';
import InterestsRoundedIcon from '@mui/icons-material/InterestsRounded';
import NoteAltRoundedIcon from '@mui/icons-material/NoteAltRounded';

export default function Admin_Sidebar(props) {

    const Menu = [
        {
            Title: "Overview",
            Icon: <SignalCellularAltRoundedIcon />
        },
        {
            Title: "Student Information",
            Icon: <FolderSharedRoundedIcon />,
        },
        {
            Title: "Course Information",
            Icon: <ArticleRoundedIcon />,
        },
        {
            Title: "Interest Information",
            Icon: <InterestsRoundedIcon />,
        },
        {
            Title: "Entrance Exam",
            Icon: <FeedRoundedIcon />,
        },
        {
            Title: "Interest Assessment",
            Icon: <TaskRoundedIcon />,
        },
        {
            Title: "Student Results",
            Icon: <NoteAltRoundedIcon />
        }
    ]

    let act
    return (
        <div className="Admin_Sidebar" >
            <div className="A_Sidebar_header">
                <div className="A_Sidebar_header_box">
                    <p className="A_Sidebar_header_p1">Admin</p>
                    <p className="A_Sidebar_header_p2">Dashboard</p>
                </div>
            </div>
            <div className="A_Sidebar_list_container">
                {Menu.map((val, index) => (
                    act = props.Active.index == index,
                    <ListItemButton
                        key={index}
                        name={val.Title}
                        sx={{
                            borderRadius: "10px",
                            margin: "10px 0px",
                            color: act? "white":"#9da4ae",
                            display: "flex",
                            gap: "15px",
                            alignItems: "center",
                            backgroundColor: act? "rgb(67, 160, 71,0.2)" : "none",
                            "&:hover": {
                                backgroundColor: "rgb(67, 160, 71,0.2)"
                            }
                        }}
                        onClick={()=>props.handleClick(index)}
                    >
                <div style={{ color: act? "#4caf50": "#9da4ae", display: "flex"}}>{val.Icon}</div>
                <p className="Admin_List_p1">{val.Title}</p>
            </ListItemButton>
                ))}
        </div>
        </div >
    )
}

{/* <div className="Admin_Sidebar_container">
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
            </div> */}