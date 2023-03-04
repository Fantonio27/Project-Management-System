import "../css/Sidebar.css"
import { ListItemIcon } from "@mui/material";
import DashboardIcon from '@mui/icons-material/DashboardRounded';
import LibraryBooksRoundedIcon from '@mui/icons-material/LibraryBooksRounded';
import DescriptionRoundedIcon from '@mui/icons-material/DescriptionRounded';
import HelpCenterRoundedIcon from '@mui/icons-material/HelpCenterRounded';
import List from '@mui/material/List';
import ListItem from '@mui/material/ListItem';
import ListItemButton from '@mui/material/ListItemButton';
import { useState } from "react";

export default function Sidebar(props) {
    let Active;

    const Menu = props.Menu

    const Category = ["Dashboard", "Courses", "Examination", "Help"]

    const [component, setcomponent] = useState(0)

    const icon = [
        <DashboardIcon sx={{ fontSize: 28 }} />,
        <LibraryBooksRoundedIcon sx={{ fontSize: 28 }} />,
        <DescriptionRoundedIcon sx={{ fontSize: 28 }} />,
        <HelpCenterRoundedIcon sx={{ fontSize: 28 }} />,
    ]

    return (
        <div className="Sidebar" style={{ width: Menu ? "250px" : "100px" }}>
            <List className="Sidebar-Listitem">
                {Category.map((text, index) => (
                    Active = component === index,
                    <ListItem key={index} sx={{ paddingRight: '0px', }}>
                        <ListItemButton onClick={()=>setcomponent(index)}
                            sx={{
                                backgroundColor: Active ? '#fdfffc' : '#388E3C',
                                borderRadius: Active? "20px 0px 0px 20px / 20px 0px 20px 20px" : "10px",
                                padding: '10px 5px',
                                marginRight: Active? "0px" : "15px",
                                transition: "0.2s",
                                "&:hover":{
                                    backgroundColor: Active? "#fdfffc" : "rgb(44, 110, 73)"
                                }
                            }}
                        >
                            <ListItemIcon
                                sx={{
                                    mr: 0.5,
                                    justifyContent: 'center',
                                    color: Active ? "#388E3C" : "#fdfffc",
                                }}
                            >
                                {
                                    icon[index]
                                }
                            </ListItemIcon>
                            <p
                                className="Sidebar-Item"
                                style={{
                                    opacity: Menu ? "1" : "0",
                                    color: Active ? "#388E3C" : "#fdfffc",
                                    fontWeight: Active ? "600" : "400"
                                }}
                            >
                                {text}
                            </p>
                        </ListItemButton>
                    </ListItem>

                ))}
            </List>
        </div>
    )
}

// {Category.map((cat, index) => (
//     <div key={index}>
//         <ListItemIcon className="Sidebar-Itemicon" sx={{ width: "80px", height: "80px" }}>
//             {icon[index]}
//         </ListItemIcon>
//         {cat}
//     </div>


// ))}

// "&&::hover":{
//     backgroundColor: "red"
// }