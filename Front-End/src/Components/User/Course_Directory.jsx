
import "../../css/Course_Directory.css"
import Image from "../../assets/Images/2.jpg"
import Arrow from '@mui/icons-material/KeyboardDoubleArrowRightOutlined';
import MenuItem from '@mui/material/MenuItem';
import Select from '@mui/material/Select';
import { useState } from "react";
import { Link, useOutletContext } from "react-router-dom";

export default function Course_Directory() {
    const {passvalue} = useOutletContext();

    const Array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]

    const [Dataform, setDataform] = useState({
        Department: "",
        Search: "",
    })

    const handleChange = (event) => {
        const { value, name } = event.target

        setDataform((prev) => ({
            ...prev,
            [name]: value
        }))
    };

    const checkbox_sx = {
        height: "30px",
        zIndex: -1
    }

    const course = {
        id: 1,
        name: "Information_Technology"
    }
    let n
    return (
        <div className="Course_Directory">
            <div className="Course_titlebar">
                <h1 className="Course_title">Course Directory</h1>
                <div>
                    <input
                        type="text"
                        className="Course_input"
                        placeholder="Search"
                        name="Search"
                        value={Dataform.Search}
                        onChange={handleChange}></input>
                    <Select
                        value={Dataform.Department}
                        onChange={handleChange}
                        displayEmpty
                        sx={checkbox_sx}
                        name="Department"
                    >
                        <MenuItem value="">
                            <em>All</em>
                        </MenuItem>
                        <MenuItem value="Dep1">Dep1</MenuItem>
                        <MenuItem value="Dep2">Dep2</MenuItem>
                        <MenuItem value="Dep3">Dep3</MenuItem>
                    </Select>
                </div>
            </div>
            <div className="Course_container">
                <div className="Course_form">
                    {
                        Array.map((index) => (
                            <div className="Course_box" key={index}>
                                <img src={Image} className="Course_img" />
                                <div className="Course_Info">
                                    <div>
                                        <p className="Course_p1">Social Sciences</p>
                                        <p className="Course_p2">(BSIT)</p>
                                        <h1 className="Course_h1">Information Technology</h1>
                                        <p className="Course_p3">Involves the use of technology to communicate, transfer data and process information. </p>
                                    </div>
                                    <Link to={`${course.name}`} style={{ textDecoration: "none" }} state={passvalue}>
                                        <div className="Course_p4">
                                            See More
                                            <Arrow sx={{ fontSize: "14px" }} />
                                        </div>
                                    </Link>
                                </div>
                            </div>
                        ))
                    }
                </div>
            </div>
        </div>
    )
}


// import { useState } from "react";
// import { Button, IconButton } from "@mui/material"
// import "../../../css/Admin/Course_Information.css"
// import AddIcon from '@mui/icons-material/Add';
// import SearchRoundedIcon from '@mui/icons-material/SearchRounded';
// import InputLabel from '@mui/material/InputLabel';
// import MenuItem from '@mui/material/MenuItem';
// import Select from '@mui/material/Select';
// import FormControl from '@mui/material/FormControl';
// import img from "../../../assets/Images/max-duzij-qAjJk-un3BI-unsplash.jpg"
// import img1 from "../../../assets/Images/2.jpg"
// import MoreVertIcon from '@mui/icons-material/MoreVert';
// import Menu from '@mui/material/Menu';

// const button_add_sx = {
//     display: 'flex',
//     alignItems: 'center',
//     justifyContent: 'center',
//     gap: '4px',
//     backgroundColor: "#4958cc",
//     color: 'white',
//     padding: '8px 15px',
//     fontFamily: 'Inter',
//     fontWeight: '500',
//     letterSpacing: '1.5px',
//     textTransform: 'none',

//     "&:hover": {
//         backgroundColor: "#3d4bb2"
//     }

// }

// const Search_icon_sx = {
//     position: 'absolute',
//     bottom: '13px',
//     color: '#252a3578',
//     left: '15px',
// }

// const icon_button_sx = {
//     position: 'absolute',
//     top: '0',
//     right: 0,
//     color: 'white',
//     zIndex: 1
// }

// export default function Course_Information() {

// }


    // const [age, setAge] = useState('')


    // const handleChange = (event) => {
    //     setAge(event.target.value);
    // };

    // const [anchorEl, setAnchorEl] = useState(null);
    // const open = Boolean(anchorEl);
    // const handleClick = (event) => {
    //     setAnchorEl(event.currentTarget);
    // };
    // const handleClose = () => {
    //     setAnchorEl(null);
    // };

    // return (
    //     <div className="A_Course_Information">
    //         <div className="A_CI_header" style={{ marginBottom: '50px' }}>
    //             <p className="Student_Info_p1">Course Information</p>
    //             <Button sx={button_add_sx}>
    //                 <AddIcon />
    //                 Add Course
    //             </Button>
    //         </div>
    //         <div className="A_CI_header">
    //             <div style={{ position: 'relative' }}>
    //                 <SearchRoundedIcon sx={Search_icon_sx} />
    //                 <input type="text" className="A_CI_header_input" placeholder="Search"></input>
    //             </div>
    //             <FormControl sx={{ minWidth: "150px" }} size="small">
    //                 <InputLabel id="demo-simple-select-label">Department</InputLabel>
    //                 <Select
    //                     id="demo-simple-select"
    //                     value={age}
    //                     label="Department"
    //                     onChange={handleChange}
    //                 >
    //                     <MenuItem value={10}>Ten</MenuItem>
    //                     <MenuItem value={20}>Twenty</MenuItem>
    //                     <MenuItem value={30}>Thirty</MenuItem>
    //                 </Select>
    //             </FormControl>
    //         </div>
    //         <div className="A_CI_container">
    //             <div className="A_CI_box">
    //                 <div>
    //                     {/* <IconButton sx={icon_button_sx}  onClick={handleClick}>
    //                         <MoreVertIcon />
    //                     </IconButton> */}
    //                     {/* <Menu
    //                         id="basic-menu"
    //                         anchorEl={anchorEl}
    //                         open={open}
    //                         onClose={handleClose}
    //                     >
    //                         <MenuItem onClick={handleClose}>Edit</MenuItem>
    //                         <MenuItem onClick={handleClose}>Delete</MenuItem>
    //                     </Menu> */}
    //                 </div>
    //                 <div className="A_CI_img_box">
    //                     <img src={img} className="A_CI_box_img" />
    //                 </div>
    //                 <div style={{ padding: '15px' }}>
    //                     <p className="A_CI_box_p1">Bachelor of Science in Information Technology</p>
    //                 </div>
    //             </div>
    //             <div className="A_CI_box">
    //                 <MoreVertIcon sx={{ position: 'absolute', top: '0', right: 0, color: 'white', zIndex: 1 }} />
    //                 <div className="A_CI_img_box">
    //                     <img src={img1} className="A_CI_box_img" />
    //                 </div>
    //                 <div style={{ padding: '15px' }}>
    //                     <p className="A_CI_box_p1">Bachelor of Science in Information Technology</p>
    //                 </div>
    //             </div>
    //             <div className="A_CI_box">
    //                 dsvvdv
    //             </div>
    //             <div className="A_CI_box">
    //                 dsvvdv
    //             </div>

    //         </div>
    //     </div>
    // )