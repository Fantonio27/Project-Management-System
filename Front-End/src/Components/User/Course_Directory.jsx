
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
