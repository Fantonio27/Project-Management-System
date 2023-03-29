import "../../css/Admin/Navbar.css"
import Logo from "../../assets/Images/logo.png"
import NotificationsRoundedIcon from '@mui/icons-material/NotificationsRounded';
import GroupRoundedIcon from '@mui/icons-material/GroupRounded';
import { IconButton, Avatar, Badge } from "@mui/material";
import { useState } from "react";

export default function Admin_Navbar() {

    return (
        <div className="Admin_Navbar">
            <div>
                <img src={Logo} className="A_Navbar_logo" />
            </div>
            <div className="A_Navbar_div1">
                <IconButton sx={{ color: "#6f727e" }} name="contact">
                    <GroupRoundedIcon />
                </IconButton>
                <IconButton sx={{ color: "#6f727e" }} name="notif">
                    <Badge variant="dot" sx={{
                        "& .MuiBadge-badge": {
                            backgroundColor: "rgb(67, 160, 71)"
                        }
                    }}>
                        <NotificationsRoundedIcon />
                    </Badge>
                </IconButton>
                <Avatar></Avatar>
            </div>

        </div >
    )
}
