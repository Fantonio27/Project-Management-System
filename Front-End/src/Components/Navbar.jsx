import { Divider } from "@mui/material"
import "../css/Navbar.css"
import Avatar from '@mui/material/Avatar';
import IconButton from '@mui/material/IconButton';
import MenuIcon from '@mui/icons-material/Menu';


const Avatar_design = {
    backgroundColor: "#388E3C",
    mr: "10px"
}


export default function Navbar(props) {

    const Menu_sx = {
        transform:  props.Menu? "rotate(90deg)": "none",
        transition: "0.5s",
        color: "#388E3C",
        mr: '20px'
    }

    return (
        <div className="Navbar">
            <div>
                <IconButton sx={Menu_sx} onClick={props.MenuClick}>
                    <MenuIcon />
                </IconButton>
                <h1 className="Navbar-title">Dashboard</h1>
            </div>
            <div className="Navbar-usertab">
                <Avatar sx={Avatar_design}>FA</Avatar>
                <p>Antonio Francis</p>
            </div>
        </div>
    )
}