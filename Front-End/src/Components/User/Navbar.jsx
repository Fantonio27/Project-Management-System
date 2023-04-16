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
import EmailOutlinedIcon from '@mui/icons-material/EmailOutlined';
import { Link } from 'react-router-dom'

export default function User_Navbar(props) {

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
                            <img src={logo} className="Navbar_Logo" />
                            <div style={{ display: 'flex', justifyContent: 'center', gap: '30px' }}>
                                {navItems.map((item, index) => {
                                    let active = props.tabindex === index
                                    return(
                                    <Link to={navLinks[index]} style={{
                                        textDecoration: 'none',
                                        // backgroundColor: 'red',
                                        display: 'flex',
                                        alignItems: 'center',
                                        borderBottom: active? '1px solid #458d6b': '1px solid white'
                                    }} key={item}>
                                        <Button key={item} sx={{
                                            color: active? '#458d6b' : '#1a2c2aff',
                                            padding: '5px 10px',
                                            // color: props.tabindex === index ? 'white' : '#1a2c2aff',
                                            // backgroundColor: props.tabindex === index? 'rgb(69, 141, 107)':'none',
                                            '&:hover': {
                                                backgroundColor: 'rgb(69, 141, 107,0.09)'
                                            }
                                        }}
                                            onClick={() => { props.handletab(index) }}>
                                            <p className='Navbar_p1'>{item}</p>
                                        </Button>
                                    </Link>
                                )})}
                            </div>
                            <div style={{ display: 'flex', justifyContent: 'flex-end', alignItems: 'center' }}>
                                <Avatar sx={{ backgroundColor: '#d8f3dce6', color: '#458d6b', fontSize: '16px' }}>AD</Avatar>
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