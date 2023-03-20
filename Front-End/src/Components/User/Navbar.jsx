import "../../css/Navbar.css"
import Avatar from '@mui/material/Avatar';
import IconButton from '@mui/material/IconButton';
import MenuIcon from '@mui/icons-material/Menu';
import Button from '@mui/material/Button';
import MenuItem from '@mui/material/MenuItem';
import { useState } from "react";
import ExitToAppRoundedIcon from '@mui/icons-material/ExitToAppRounded';
import PersonRoundedIcon from '@mui/icons-material/PersonRounded';
import KeyboardArrowDownIcon from '@mui/icons-material/KeyboardArrowDown';
import { Link, useNavigate } from "react-router-dom";
import Modal from '@mui/material/Modal';
import { Box } from "@mui/system";
import Logo from '../../assets/Images/logo.png'
import Menu from '@mui/material/Menu';

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

    const [modal, setmodal] = useState(false)

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

    const [anchorEl, setAnchorEl] = useState(null);
    const open = Boolean(anchorEl);
    const handleClick = (event) => {
        setAnchorEl(event.currentTarget);
    }
    const handleClose = () => {
        setAnchorEl(null);
    };

    return (
        <div className="Navbar">
            <div>
                <IconButton sx={Menu_sx} onClick={props.MenuClick}>
                    <MenuIcon />
                </IconButton>
                <img src={Logo} className="Navbar-logo" />
            </div>
            <div className="Navbar-usertab">
                <Button sx={{ padding: '2px' }} onClick={handleClick}>
                    <Avatar sx={Avatar_design}>{props.data.FirstName[0]}{props.data.LastName[0]}</Avatar>
                    <p>{props.data.FirstName} {props.data.LastName}</p>
                    <KeyboardArrowDownIcon sx={{
                        transform: open ? "rotate(180deg)" : "rotate(0deg)",
                        transition: "0.3s"
                    }} />
                </Button>
                <Menu
                    sx={{
                        position: "absolute",
                        left: "100px",
                        top: "20px"
                    }}
                    anchorEl={anchorEl}
                    open={open}
                    onClose={handleClose}
                    MenuListProps={{
                        'aria-labelledby': 'basic-button',
                    }}>
                    <Link to="Profile" style={{ textDecoration: "none", color: "inherit" }} state={props.data}>
                        <MenuItem onClick={handleClose}>
                            <PersonRoundedIcon sx={{ mr: 1.5 }} />
                            <p>Profile</p>
                        </MenuItem>
                    </Link>
                    <MenuItem onClick={() => (setmodal(prev => !prev), setAnchorEl(null))}>
                        <ExitToAppRoundedIcon sx={{ mr: 1.5 }} />
                        <p>Sign Out</p>
                    </MenuItem>
                </Menu>
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
                            <button className="SignOut_btn" onClick={() => navigate("/")}>Sign Out</button>
                            <button className="Cancel_btn" onClick={() => setmodal(prev => false)}>Cancel</button>
                        </div>
                    </Box>
                </Modal>
            </div>
        </div>
    )
}

  {/* <Button
                    id="basic-button"
                    aria-controls={open ? 'basic-menu' : undefined}
                    aria-haspopup="true"
                    aria-expanded={open ? 'true' : undefined}
                    onClick={handleClick}
                >
                    <Avatar sx={Avatar_design}>{props.data.FirstName[0]}{props.data.LastName[0]}</Avatar>
                    <p>{props.data.FirstName} {props.data.LastName}</p>
                    <KeyboardArrowDownIcon sx={{
                        transform: menubar ? "rotate(180deg)" : "rotate(0deg)",
                        transition: "0.3s"
                    }} />
                </Button>
                <Menu
                    id="basic-menu"
                    anchorEl={anchorEl}
                    open={open}
                    onClose={handleClose}
                    MenuListProps={{
                        'aria-labelledby': 'basic-button',
                    }}
                >
                    <Link to="Profile" style={{ textDecoration: "none", color: "inherit" }} state={props.data}>
                        <MenuItem onClick={
                            handleClose
                        }>
                            <PersonRoundedIcon sx={{ mr: 1.5 }} />
                            <p>Profile</p>
                        </MenuItem>
                    </Link>
                    <MenuItem onClick={() => setmodal(prev => !prev)}>
                        <ExitToAppRoundedIcon sx={{ mr: 1.5 }} />
                        <p>Sign Out</p>
                    </MenuItem>
                </Menu> */}