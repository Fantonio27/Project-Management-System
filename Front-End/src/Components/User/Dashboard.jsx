import * as React from 'react';
import Box from '@mui/material/Box';
import CssBaseline from '@mui/material/CssBaseline';
import Toolbar from '@mui/material/Toolbar';
import "../../css/User/Dashboard.css"
import User_Navbar from './Navbar';
import { Outlet } from 'react-router-dom';
import { useRef } from 'react';
import Footer from '../Footer';
import { Drawer } from '@mui/material';

export default function User_Dashboard() {


    const [datauser, setdatauser] = React.useState({})

    React.useEffect(()=>{
        const d = window.localStorage.getItem('USER_DATA')
        setdatauser(JSON.parse(d))
    },[])

    const [tab, settab] = React.useState()

    function locationget() {
        const parts = location.href.split('/').at(-1);

        settab(parts)
    }

    React.useEffect(() => {
        locationget()
    }, [])

    const handlesettab = (i) => {
        settab(i)
    }

    return (
        <Box sx={{backgroundColor: 'white'}} >
            <CssBaseline />
            <div>
                <User_Navbar tabindex={tab} handletab={handlesettab} userdata={datauser}/>
            </div>               
            <Box component="main">
                <Toolbar />
                <div className='Dashboard_main'>
                    <Outlet/>
                    {/* <Footer /> */}
                </div>
            </Box>
        </Box>
    );
}

// DrawerAppBar.propTypes = {
//     window: PropTypes.func,
// };


// <Box component="main" sx={{ p: 30, pt: 20, backgroundColor: '' }}>
// <Toolbar />
// <h1>Course Directory</h1>
// <div className='Course_Directory'>
//     <div className='box_pic'>
      
//         <div className='box_img1'>
//             <div>
//                 <p className='p1'>Bachelor of Science in Information Technology</p>
//                 <p className='p2'>BSIT</p>
//             </div>
//         </div>
//     </div>
//     <div className='box_pic'>
   
//         <div className='box_img1'>
//             <div>
//                 <p className='p1'>Bachelor of Science in Information Technology</p>
//                 <p className='p2'>BSIT</p>
//             </div>
//         </div>
//     </div>
//     <div className='box_pic'>
   
//         <div className='box_img1'>
//             <div>
//                 <p className='p1'>Bachelor of Science in Information Technology</p>
//                 <p className='p2'>BSIT</p>
//             </div>
//         </div>
//     </div>
//     <div className='box_pic'>
        
//         <div className='box_img1' style={{
//             backgroundImage: `url(${img})`
//         }}>
//             <div>
//                 <p className='p1'>Bachelor of Science in Information Technology</p>
//                 <p className='p2'>BSIT</p>
//             </div>
//         </div>
//     </div>
//     <div className='box_pic'>

//         <div className='box_img1'>
//             <div>
//                 <p className='p1'>Bachelor of Science in Information Technology</p>
//                 <p className='p2'>BSIT</p>
//             </div>
//         </div>
//     </div>
//     <div className='box_pic'>
    
//         <div className='box_img1'>
//             <div>
//                 <p className='p1'>Bachelor of Science in Information Technology</p>
//                 <p className='p2'>BSIT</p>
//             </div>
//         </div>
//     </div>
//     <div className='box_pic'>

//         <div className='box_img1'>
//             <div>
//                 <p className='p1'>Bachelor of Science in Information Technology</p>
//                 <p className='p2'>BSIT</p>
//             </div>
//         </div>
//     </div>
//     <div className='box_pic'>
       
//         <div className='box_img1'>
//             <div>
//                 <p className='p1'>Bachelor of Science in Information Technology</p>
//                 <p className='p2'>BSIT</p>
//             </div>
//         </div>
//     </div>
// </div>


// </Box>