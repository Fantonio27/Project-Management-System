
import "../../../css/User/Tabs/Course_Directory.css"
import Select from '@mui/material/Select';
import MenuItem from '@mui/material/MenuItem';
import React from "react";
import axios from 'axios'
import { Link } from "react-router-dom";
import { Fade } from "@mui/material";

export default function Course_Directory() {

    const [dataform, setDataform] = React.useState([])

    const [dep, setdep] = React.useState('')

    React.useEffect(() => {
        axios.get(`http://localhost/recommendation_system/api/admin/Course_Information.php`).then(function (response) {
            setDataform(response.data)
        })
    }, [])

    const department = [
        'Humanities',
        'Social Sciences',
        'Natural Sciences',
        'Formal Sciences',
        'Agriculture',
        'Architecture and Design',
        'Business',
        'Health Sciences',
        'Education',
        'Engineering',
        'Media and Communication',
        'Public Administration',
        'Transportation',
        'Nutrition',
    ]

    const handleChange = (event) => {
        const value = event.target.value
        setdep(value)
        let dep
        if(value === ""){
            dep = "ALLDEP"
        }else{
            dep = "EACHDEP"
        }

        axios.get(`http://localhost/recommendation_system/api/user/Course_Information.php?FIELD="${value}"&&FETCH='${dep}'`).then(function (response) {
            setDataform(response.data)
        })
    }

    return (
        <Fade in={true} timeout={800}>
            <div className="Course_Directory" >
                <div>
                    <div className="Course_D_Header">
                        <p className="Course_p1">Course Directory</p>
                        <div style={{ display: 'flex', gap: '20px' }}>
                            {/* <input className="Course_input" placeholder="Course Name" /> */}
                            <Select
                                value={dep}
                                onChange={handleChange}
                                displayEmpty
                                size="small"
                            sx={{width: '250px'}}
                            >
                                <MenuItem value="">
                                    <em>All Fields</em>
                                </MenuItem>
                                {
                                    department.map((dep, index) => (
                                        <MenuItem value={dep} key={index}>{dep}</MenuItem>
                                    ))
                                }
                            </Select>
                        </div>
                    </div>
                    <div className="Course_D_Container">
                        {
                            dataform.map((val, index) => {
                                // {`/${val.COURSE_NAME}`}
                                return (
                                    <Link to={`${val.CID}`} style={{ textDecoration: 'none' }} key={index}>
                                        <div className="Course_D_Box">
                                            <img
                                                // src="https://drive.google.com/uc?export=view&id=1qviHfamCOF4u8L8WzZf8jsyu4M0qzfYR" 
                                                src={`/${val.HEADER_PICTURE}`}
                                                className="Course_B_Img"
                                            />
                                            <div className="Course_B_div">
                                                <p className="Course_B_p1">{val.FIELD}</p>
                                                <p className="Course_B_p2">{val.COURSE_NAME}</p>
                                            </div>
                                        </div>
                                    </Link>
                                )
                            })
                        }
                    </div>

                </div>
            </div>
        </Fade>
    )
}
