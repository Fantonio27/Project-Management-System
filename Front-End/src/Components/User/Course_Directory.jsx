
import "../../css/Course_Directory.css"
import Image from "../../assets/Images/2.jpg"
import Arrow from '@mui/icons-material/KeyboardDoubleArrowRightOutlined';
import MenuItem from '@mui/material/MenuItem';
import Select from '@mui/material/Select';
import { useState } from "react";

export default function Course_Directory() {
    const Array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]

    const [department, setdepartment] = useState({
        course: ""
    })

    const handlechange = (event) => {
        const {value} = event.target

        setdepartment(prev=> value)
    }

    const checkbox_sx = {
        height : "30px",
    }
    
    return (
        <div className="Course_Directory">
            <div className="Course_titlebar">
                <h1 className="Course_title">Course Directory</h1>
                <div>
                    <input type="text" className="Course_input" placeholder="Search"></input>

                    <Select
                        value={department.course}
                        onChange={handlechange}
                        displayEmpty
                        sx={checkbox_sx}
                    >
                        <MenuItem value="">
                            <em>All</em>
                        </MenuItem>
                        <MenuItem>Dep1</MenuItem>
                        <MenuItem>Dep2</MenuItem>
                        <MenuItem>Dep3</MenuItem>
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
                                    <div className="Course_p4">
                                        See More
                                        <Arrow sx={{ fontSize: "2px" }} />
                                    </div>
                                </div>
                            </div>
                        ))
                    }
                </div>
            </div>
        </div>
    )
}
