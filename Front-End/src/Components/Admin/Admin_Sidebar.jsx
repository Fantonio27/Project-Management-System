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
import ExpandLess from '@mui/icons-material/ExpandLess';
import ExpandMore from '@mui/icons-material/ExpandMore';
import Collapse from '@mui/material/Collapse';
import List from '@mui/material/List';

export default function Admin_Sidebar(props) {

    const Menu = [
        {
            Title: "Overview",
            Icon: <SignalCellularAltRoundedIcon />,
            Link: "",
        },
        {
            Title: "Student Information",
            Icon: <FolderSharedRoundedIcon />,
            Link: "Student_Information",
        },
        {
            Title: "Course Information",
            Icon: <ArticleRoundedIcon />,
            Link: "Course_Information",
        },
        {
            Title: "Interest Information",
            Icon: <InterestsRoundedIcon />,
            Link: "Interest_Information",
        },
        {
            Title: "Entrance Exam",
            Icon: <FeedRoundedIcon />,
            Link: "Entrance_Exam",
        },
        {
            Title: "Interest Assessment",
            Icon: <TaskRoundedIcon />,
            Link: "Interest_Assessment",
        },
        {
            Title: "Student Results",
            Icon: <NoteAltRoundedIcon />,
            Link: "Student_Results",
            tab: [
                { sub: "Entrance Exam Results", Link2: "Entrance_Exam_Results" },
                { sub: "Interest Assessment Results", Link2: "Interest_Assessment_Results" },
                { sub: "OverAll Results", Link2: "OverAll_Results" },
            ]
        }
    ]

    let act, act1

    const [expanded, setExpanded] = useState(false)

    const handleopentab = () => {
        setExpanded(prev => !prev)
    }

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
                    act = props.Active.text == val.Link,
                    act1 = props.Active.text2 == val.Link,
                    val.Title === "Student Results" ?
                        <div key={index}>
                            <ListItemButton onClick={handleopentab}
                                sx={{
                                    borderRadius: "10px",
                                    margin: "10px 0px 0px",
                                    color: act1 ? "white" : "#9da4ae",
                                    display: "flex",
                                    gap: "15px",
                                    alignItems: "center",
                                    justifyContent: 'space-between',
                                    backgroundColor: act1 ? "rgb(67, 160, 71,0.2)" : "none",
                                    "&:hover": {
                                        backgroundColor: "rgb(67, 160, 71,0.2)"
                                    }
                                }}
                            >
                                <div style={{ display: "flex", gap: "15px" }}>
                                    <div style={{ color: act1 ? "#4caf50" : "#9da4ae" }}>{val.Icon}</div>
                                    <p className="Admin_List_p1">{val.Title}</p>
                                </div>
                                {expanded ? <ExpandLess /> : <ExpandMore />}
                            </ListItemButton>
                            <Collapse in={expanded} timeout="auto" unmountOnExit>
                                {val.tab.map((sub, index) => {
                                    return (
                                        <Link to={`Student_Results/${sub.Link2}`} style={{ textDecoration: "none" }} key={index} state={{name: sub.sub}}>
                                            <ListItemButton sx={{ pl: 7, color: sub.Link2 === props.Active.text ? "white" : "#9da4ae", }} onClick={() => props.handleClick(sub.Link2, val.Link)}>
                                                <p className="Admin_List_p1">{sub.sub}</p>
                                            </ListItemButton>
                                        </Link>
                                    )
                                })}
                            </Collapse>
                        </div>
                        :
                        <Link to={val.Link} style={{ textDecoration: "none", color: "inherit" }} key={index}>
                            <ListItemButton
                                name={val.Title}
                                sx={{
                                    borderRadius: "10px",
                                    margin: "10px 0px",
                                    color: act ? "white" : "#9da4ae",
                                    display: "flex",
                                    gap: "15px",
                                    alignItems: "center",
                                    backgroundColor: act ? "rgb(67, 160, 71,0.2)" : "none",
                                    "&:hover": {
                                        backgroundColor: "rgb(67, 160, 71,0.2)"
                                    }
                                }}
                                onClick={() => props.handleClick(val.Link)}
                            >
                                <div style={{ color: act ? "#4caf50" : "#9da4ae", display: "flex" }}>{val.Icon}</div>
                                <p className="Admin_List_p1">{val.Title}</p>
                            </ListItemButton>
                        </Link>
                ))}
            </div>
        </div >
    )
}
