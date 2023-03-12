import "../../css/Navbar.css"
import Avatar from '@mui/material/Avatar';
import IconButton from '@mui/material/IconButton';
import MenuIcon from '@mui/icons-material/Menu';
import Button from '@mui/material/Button';
import MenuList from '@mui/material/MenuList';
import MenuItem from '@mui/material/MenuItem';
import { useState } from "react";
import ExitToAppRoundedIcon from '@mui/icons-material/ExitToAppRounded';
import PersonRoundedIcon from '@mui/icons-material/PersonRounded';
import KeyboardArrowDownIcon from '@mui/icons-material/KeyboardArrowDown';
import KeyboardArrowUpIcon from '@mui/icons-material/KeyboardArrowUp';
import { Link, useNavigate } from "react-router-dom";
import Modal from '@mui/material/Modal';
import { Box } from "@mui/system";

const Avatar_design = {
    backgroundColor: "#388E3C",
    mr: "10px"
}

export default function Navbar(props) {

    const navigate = useNavigate();

    const Menu_sx = {
        transform: props.Menu ? "rotate(90deg)" : "none",
        transition: "0.5s",
        color: "#388E3C",
        mr: '20px'
    }

    const [menubar, setmenubar] = useState(false)

    const [modal, setmodal] = useState(false)

    const handleClick = () => {
        setmenubar(prev => !prev);
    }

    const style = {
        position: 'absolute',
        top: '50%',
        left: '50%',
        transform: 'translate(-50%, -50%)',
        backgroundColor: 'white',
        borderRadius: '20px',
        border: "1px solid #dee2e6",
        p: 4,
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
                    {menubar ? <KeyboardArrowUpIcon /> : <KeyboardArrowDownIcon />}
                </Button>
                <MenuList
                    className="Navbar-Menu"
                    style={{
                        opacity: menubar ? "1" : "0",
                        pointerEvents: menubar ? "all" : "none",
                        position: "absolute",
                    }}>
                    <Link to="Profile" style={{ textDecoration: "none", color: "inherit" }}>
                        <MenuItem>
                            <PersonRoundedIcon sx={{ mr: 1.5 }} />
                            <p>Profile</p>
                        </MenuItem>
                    </Link>
                    <MenuItem onClick={()=> setmodal(prev => !prev)}>
                        <ExitToAppRoundedIcon sx={{ mr: 1.5 }} />
                        <p>Sign Out</p>
                    </MenuItem>
                </MenuList>
                <Modal
                    open={modal}
                    aria-labelledby="modal-modal-title"
                    aria-describedby="modal-modal-description"
                >
                    <Box sx={style}>
                        <h1 className="modal_h1">Log out</h1>

                        <p className="modal_p1">
                            Are you sure you want to sign out?
                        </p>
                        <div className="modal_div">
                            <button className="SignOut_btn" onClick={()=> navigate("/")}>Sign Out</button>
                            <button className="Cancel_btn" onClick={()=>setmodal(prev=> false)}>Cancel</button>
                        </div>
                    </Box>
                </Modal>
            </div>
        </div>
    )
}