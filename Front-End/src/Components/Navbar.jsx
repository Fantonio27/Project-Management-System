import "../css/Navbar.css"
import Avatar from '@mui/material/Avatar';
import IconButton from '@mui/material/IconButton';
import MenuIcon from '@mui/icons-material/Menu';
import Button from '@mui/material/Button';
import MenuList from '@mui/material/MenuList';
import MenuItem from '@mui/material/MenuItem';
import { useState } from "react";
import ExitToAppRoundedIcon from '@mui/icons-material/ExitToAppRounded';
import PersonRoundedIcon from '@mui/icons-material/PersonRounded';

const Avatar_design = {
    backgroundColor: "#388E3C",
    mr: "10px"
}


export default function Navbar(props) {

    const Menu_sx = {
        transform: props.Menu ? "rotate(90deg)" : "none",
        transition: "0.5s",
        color: "#388E3C",
        mr: '20px'
    }

    const [menubar, setmenubar] = useState(false);

    const handleClick = () => {
        setmenubar(prev => !prev);
    };

    return (
        <div className="Navbar">
            <div>
                <IconButton sx={Menu_sx} onClick={props.MenuClick}>
                    <MenuIcon />
                </IconButton>
                <h1 className="Navbar-title">LOGO</h1>
            </div>
            <div className="Navbar-usertab">
                <Button sx={{ padding: '2px' }} onClick={handleClick}>
                    <Avatar sx={Avatar_design}>FA</Avatar>
                    <p>Francis Antonio</p>
                </Button>
                <MenuList
                    className="Navbar-Menu"
                    style={{
                        opacity: menubar ? "1" : "0",
                        pointerEvents: menubar ? "all" : "none",
                        position: "absolute",
                    }}>
                    <MenuItem>
                        <PersonRoundedIcon sx={{ mr: 1.5 }} />
                        <p>Profile</p>
                    </MenuItem>
                    <MenuItem>
                        <ExitToAppRoundedIcon sx={{ mr: 1.5 }} />
                        <p >Sign Out</p>
                    </MenuItem>
                </MenuList>
            </div>
        </div>
    )
}