import * as React from 'react';
import AppBar from '@mui/material/AppBar';
import Box from '@mui/material/Box';
import Divider from '@mui/material/Divider';
import Drawer from '@mui/material/Drawer';
import IconButton from '@mui/material/IconButton';
import List from '@mui/material/List';
import ListItem from '@mui/material/ListItem';
import ListItemButton from '@mui/material/ListItemButton';
import ListItemText from '@mui/material/ListItemText';
import MenuIcon from '@mui/icons-material/Menu';
import Toolbar from '@mui/material/Toolbar';
import Typography from '@mui/material/Typography';
import Button from '@mui/material/Button';
import logo from '../../assets/Images/logo.png'
import "../../css/User/Navbar.css"
import { Avatar } from '@mui/material';
import { Link } from 'react-router-dom'
import ArrowBackIosRoundedIcon from '@mui/icons-material/ArrowBackIosRounded';


const avatar_button = {
    textTransform: 'none', 
    padding: '3px 10px',
    // border: '1px solid #e9ecef', 
    // backgroundColor: '#f8f9fa',
    '&:hover':{
        backgroundColor: '#f8f9fa',
    }
}
export default function User_Navbar(props) {

    // {props.userdata.FIRSTNAME} {props.userdata.LASTNAME}
    // console.log(props.userdata)
    const drawerWidth = 240;
    const navItems = ['Dashboard', 'Course', 'IA Information', 'Examination', 'Help']

    const navLinks = ["", 'Course_Directory', 'IA_Information', 'Examination', 'Help'];

    const { window } = props;
    const [mobileOpen, setMobileOpen] = React.useState(false);

    const handleDrawerToggle = () => {
        setMobileOpen((prevState) => !prevState);
    };

    const drawer = (
        <Box onClick={handleDrawerToggle} sx={{ textAlign: 'center' }}>
            <Typography variant="h6" sx={{ my: 2 }}>
                MUI
            </Typography>
            <Divider />
            <List>
                {navItems.map((item) => (
                    <ListItem key={item} disablePadding>
                        <ListItemButton sx={{ textAlign: 'center' }}>
                            <ListItemText primary={item} />
                        </ListItemButton>
                    </ListItem>
                ))}
            </List>
        </Box>
    );

    const container = window !== undefined ? () => window().document.body : undefined;

    return (
        <div>
            <AppBar component="nav" sx={{ backgroundColor: 'white', boxShadow: 'rgba(99, 99, 99, 0.1) 0px 2px 8px 0px;' }} elevation={0}>
                <Toolbar>
                    <IconButton
                        color="inherit"
                        aria-label="open drawer"
                        edge="start"
                        onClick={handleDrawerToggle}
                        sx={{ mr: 2, display: { sm: 'none' }, color: '#458d6b' }}
                    >
                        <MenuIcon />
                    </IconButton>

                    <Box sx={{ display: { xs: 'none', sm: 'block' }, width: '100%' }}>
                        <div className='Navbar_container'>
                            <div style={{ display: 'flex', alignItems: 'center', gap: '10px' }}>
                                <img src={logo} className="Navbar_Logo" />
                                <p className='Navbar_title'>CRRS</p>
                            </div>
                            <div style={{ display: 'flex', justifyContent: 'center', gap: '30px' }}>
                                {navItems.map((item, index) => {
                                    let active = props.tabindex === navLinks[index]
                                    return (
                                        <Link to={{
                                            pathname: navLinks[index],
                                            state: { data: 'hello'}
                                        }} style={{
                                            textDecoration: 'none',
                                            display: 'flex',
                                            alignItems: 'center',
                                            // transition: '0.3s',
                                            // borderBottom: active? '2px solid rgb(69, 141, 107, 0.8)': '2px solid white'
                                        }}
                                        key={item}>
                                            <Button key={item} sx={{
                                                // color: active? '#458d6b' : '#1a2c2aff',
                                                padding: '8px 15px',
                                                color: active ? 'white' : '#1a2c2aff',
                                                backgroundColor: active ? '#458d6b' : 'none',
                                                '&:hover': {
                                                    backgroundColor: active ? '#407d61' : 'rgb(69, 141, 107,0.09)'
                                                }
                                            }}
                                                onClick={() => { props.handletab(navLinks[index]) }}>
                                                <p className='Navbar_p1'>{item}</p>
                                            </Button>
                                        </Link>
                                    )
                                })}
                            </div>
                            <div style={{ display: 'flex', justifyContent: 'flex-end', alignItems: 'center' }}>
                                <button className='avatar_button'>
                                    <Avatar sx={{ backgroundColor: '#d8f3dce6', color: '#458d6b', fontSize: '16px' }}>AD</Avatar>
                                    <div className='Navbar_Avatar'>
                                        <p className='Navbar_Avatar_p1'> {props.userdata.FIRSTNAME} {props.userdata.LASTNAME}</p>
                                        <p className='Navbar_Avatar_p2'>Student</p>
                                    </div>
                                    <ArrowBackIosRoundedIcon sx={{ color: '#6f727eff', fontSize: '16px', transform: 'rotate(270deg)' }} />
                                </button>
                            </div>
                        </div>
                    </Box>
                </Toolbar>
            </AppBar>

            <Box component="nav">
                <Drawer
                    container={container}
                    variant="temporary"
                    open={mobileOpen}
                    onClose={handleDrawerToggle}
                    ModalProps={{
                        keepMounted: true,
                    }}
                    sx={{
                        display: { xs: 'block', sm: 'none' },
                        '& .MuiDrawer-paper': { boxSizing: 'border-box', width: drawerWidth },
                    }}
                >
                    {drawer}
                </Drawer>
            </Box>
        </div>
    )
}

// DrawerAppBar.propTypes = {
//     window: PropTypes.func,
// };