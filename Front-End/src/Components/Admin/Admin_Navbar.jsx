import "../../css/Admin/Navbar.css"
import Logo from "../../assets/Images/logo.png"
import NotificationsRoundedIcon from '@mui/icons-material/NotificationsRounded';
import GroupRoundedIcon from '@mui/icons-material/GroupRounded';
import { IconButton, Avatar, Badge } from "@mui/material";
import { useState } from "react";
import Tooltip from '@mui/material/Tooltip';
import Menu from '@mui/material/Menu';
import MenuItem from '@mui/material/MenuItem';
import { Link } from "react-router-dom";
import React from "react";

export default function Admin_Navbar() {
    const [anchorEl, setAnchorEl] = React.useState(null);
    const open = Boolean(anchorEl);

    const handleClick = (event) => {
        setAnchorEl(event.currentTarget);
    };

    const handleClose = () => {
        setAnchorEl(null);
    };
    return (
        <div className="Admin_Navbar">
            <div>
                <img src={Logo} className="A_Navbar_logo" />
            </div>
            <div className="A_Navbar_div1">
                {/* <Tooltip title="Contacts">
                    <IconButton sx={{ color: "#6f727e" }} name="contact">
                        <GroupRoundedIcon />
                    </IconButton>
                </Tooltip> */}
                {/* <Tooltip title="Notifications">
                    <IconButton sx={{ color: "#6f727e" }} name="notif">
                        <Badge variant="dot" sx={{
                            "& .MuiBadge-badge": {
                                backgroundColor: "rgb(67, 160, 71)"
                            }
                        }}>
                            <NotificationsRoundedIcon />
                        </Badge>
                    </IconButton>
                </Tooltip> */}
                <Tooltip title="Admin Profile">
                    <Avatar sx={{ backgroundColor: 'rgba(78, 127, 56, 0.85)', cursor: 'pointer' }} onClick={handleClick}></Avatar>
                </Tooltip>
            </div>
            <Menu
                id="basic-menu"
                anchorEl={anchorEl}
                open={open}
                onClose={handleClose}
                anchorOrigin={{ vertical: 'bottom', horizontal: 'left' }}
                transformOrigin={{ vertical: 'top', horizontal: 'left' }}
            >

                {/* <MenuItem onClick={handleClose}>
                    <p className='Menu_p1'><b>Admin123</b></p>
                </MenuItem> */}
                <Link to="/Admin_Login" style={{ textDecoration: 'none' }}>
                    <MenuItem onClick={handleClose}>
                        <p className='Menu_p1'>Sign Out</p>
                    </MenuItem>
                </Link>
            </Menu>
        </div >
    )
}
