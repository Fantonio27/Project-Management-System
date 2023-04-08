import "../../../../css/Admin/Form/CI_Form.css"
import React from "react";
import AddIcon from '@mui/icons-material/Add';
import { IconButton, Button, Fade } from "@mui/material";
import { Link } from "react-router-dom";
import axios from "axios";
import { useLocation } from "react-router-dom";

const save_sx = {
    textTransform: "none",
    backgroundColor: "#8dbc6b",
    color: "white",
    fontFamily: "Poppins",
    letterSpacing: "1.5px",
    padding: "8px 25px",

    "&:hover": {
        backgroundColor: "#82ae62"
    }
}

const cancel_sx = {
    textTransform: "none",
    color: "#505161ff",
    fontFamily: "Poppins",
    padding: "8px 30px",
    border: "1px solid #DEE2E6",
    backgroundColor: "white",

    "&:hover": {
        backgroundColor: "#F8F9FA"
    }
}

export default function CI_Form() {

    const [Dataform, setDataform] = React.useState({})

    React.useEffect(() => {
        const id = location.href.split('/').at(-1);

        axios.get(`http://localhost/recommendation_system/api/admin/Course_Information.php?cid=${id}`).then(function (response) {
            setDataform(response.data)
        })
    }, [])

    // console.log(Dataform['CID'])

    const { CID, FIELD, ACRONYM, COURSE_NAME, INFORMATION, HEADER_PICTURE, DATE } = Dataform

    // const array = [CID, FIELD, ACRONYM, COURSE_NAME, INFORMATION, HEADER_PICTURE, DATE]
    const field = [
        { id: "CID", label: "Course Information ID", text: "lorem ipsum" },
        { id: "FIELD", label: "Field", text: "lorem ipsum" },
        { id: "ACRONYM", label: "Acronym", text: "lorem ipsum" },
        { id: "COURSE_NAME", label: "Course Name", text: "lorem ipsum" },
        { id: "INFORMATION", label: "Information", text: "lorem ipsum" },
        { id: "HEADER_PICTURE", label: "Header Picture", text: "lorem ipsum" },
        { id: "DATE", label: "Date", text: "lorem ipsum" },
        { id: "JOB", label: "Job", text: "lorem ipsum" },
    ]

    const tab = (val, value) => {
        if (val.id === "INFORMATION") {
            return <textarea 
                name={val.id}
                className="CI_Form_input" 
                style={{ height: "100px" }} 
                placeholder={val.label} 
                value={Dataform[`${val.id}`] || ''}
                onChange={onChange}
            />
        } else if (val.id === "JOB") {
            return (
                <>
                    <input className="CI_Form_input" placeholder={val.label} />
                    <div className="CI_Form_Add_Job"><AddIcon sx={{ color: "#252a35ff", fontSize: "22px" }} />Add Another</div>
                </>
            )
        } else {
            return <input
                name={val.id}
                type="text"
                className="CI_Form_input"
                placeholder={val.label}
                value={Dataform[`${val.id}`] || ''}
                onChange={onChange}
            />
        }
    }

    // console.log(Dataform)

    const onChange = (event) => {
        const { name, value } = event.target
        setDataform((prev) => ({
            ...prev,
            [name]: value
        }))
    }

    return (
        <Fade in={true} timeout={1000}>
            <div className="CI_Form">
                <div className="CI_Form_Title">
                    <div>
                        <p>Edit Course Information</p>
                        <p className="CI_Form_subTitle">Update the details and other information of a Course</p>
                    </div>
                    <div style={{ display: 'flex', gap: '10px' }}>
                        <div>
                            <Button sx={save_sx}>Save</Button>
                        </div>
                        <Link to="../" style={{ textDecoration: 'none' }}>
                            <Button sx={cancel_sx}>Cancel</Button>
                        </Link>
                    </div>
                </div>

                {
                    field.map((val, index) => {
                        return (
                            <div className="CI_Form_container" key={index}>
                                <div>
                                    <p className="CI_Form_p1">{val.label}</p>
                                    <p className="CI_Form_p2">{val.text}</p>
                                </div>
                                <div>
                                    {tab(val)}
                                </div>
                            </div>
                        )
                    })
                }
            </div>
        </Fade>
    )
}