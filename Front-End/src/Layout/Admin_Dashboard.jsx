import "../css/Admin/Dashboard.css"
import SideNavbar from "../Components/Admin/Admin_Sidebar"
import Main from "../Components/Admin/Admin_Main"
import Data_Table from "../Components/Admin/Data_Table"
import Footer from "../Components/Footer"
import { useState, useEffect } from "react"
import { Outlet } from "react-router-dom"
import Admin_Main from "../Components/Admin/Admin_Main"
import Admin_Navbar from "../Components/Admin/Admin_Navbar"
import AppBar from '@mui/material/AppBar';
import Box from '@mui/material/Box';
import Drawer from '@mui/material/Drawer';
import IconButton from '@mui/material/IconButton';
import MenuIcon from '@mui/icons-material/Menu';
import Toolbar from '@mui/material/Toolbar';
import { Typography } from "@mui/material"
const drawerWidth = 280;

export default function Admin(props) {

    const { window } = props;
    const [mobileOpen, setMobileOpen] = useState(false);

    const handleDrawerToggle = () => {
        setMobileOpen(!mobileOpen);
    };
    const container = window !== undefined ? () => window().document.body : undefined;

    const [tab, settab] = useState({
        text: "",
    })

    function handlevalue(a) {
        settab(() => ({
            text: a,
        }))
    }

    const sidebar = (
        <SideNavbar handleClick={handlevalue} Active={tab} />
    )

    function locationget() {
        const parts = location.href.split('/').at(-1);

        settab(() => ({
            text: parts == "Admin_Dashboard" ? "" : parts,
        }))
    }

    useEffect(() => {
        locationget()
    }, [])


    return (
        <Box sx={{ display: 'flex' }} >
            <AppBar
                position="fixed"
                sx={{
                    width: { sm: `calc(100% - ${drawerWidth}px)` },
                    ml: { sm: `${drawerWidth}px` },
                    background: "rgba(216, 243, 220, 0.094)",
                    backdropFilter: "blur(15px)",
                    boxShadow: "rgba(27, 31, 35, 0.02) 0px 1px 0px, rgba(255, 255, 255, 0.0) 0px 1px 0px inset;"
                }}
            >
                <Toolbar>
                    <IconButton
                        color="#202435"
                        aria-label="open drawer"
                        edge="start"
                        onClick={handleDrawerToggle}
                        sx={{ mr: 2, display: { sm: 'none' } }}
                    >
                        <MenuIcon />
                    </IconButton>
                    <Admin_Navbar />
                </Toolbar>
            </AppBar>
            <Box
                component="nav"
                sx={{ width: { sm: drawerWidth }, flexShrink: { sm: 0 } }}
            >
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
                        '& .MuiDrawer-paper': { boxSizing: 'border-box', width: drawerWidth, backgroundColor: "#202435" },
                    }}
                >
                    {sidebar}
                </Drawer>
                <Drawer
                    variant="permanent"
                    sx={{
                        display: { xs: 'none', sm: 'block' },
                        '& .MuiDrawer-paper': { boxSizing: 'border-box', width: drawerWidth, backgroundColor: "#202435" },
                    }}
                    open
                >
                    {sidebar}
                </Drawer>
            </Box>
            <Box
                component="main"
                sx={{ flexGrow: 1, p: 10, width: { sm: `calc(100% - ${drawerWidth}px)` } }}
            >
                <Toolbar />
                <Outlet />
            </Box>
        </Box>
    )
}


// <div>
//                 <SideNavbar handleClick={handlevalue} index={tab.index}/>
//             </div>
//             <div className="AdminDashboard_Main">
//                 <Outlet/>
//                 <Footer/>
//             </div>