import "../../../css/User/Tabs/User_Profile.css"
import { Avatar, Badge, Box, LinearProgress, Zoom, FormControl, Select, MenuItem } from "@mui/material";
import EditIcon from '@mui/icons-material/Edit';
import CameraIcon from '@mui/icons-material/CameraAltRounded';
import Button from '@mui/material/Button';
import { useState, useEffect } from "react";
import { useRef } from "react";
import axios from "axios";
import React from "react";

export default function Profile() {
    const windowHeight = useRef(window.innerHeight);

    const user = window.localStorage.getItem('USER_DATA')

    const [edit, setedit] = useState(false)

    const edit_sx = {
        opacity: edit ? "1" : "0",
        backgroundColor: "white",
        padding: "5px",
        fontSize: "16px",
        borderRadius: "50px",
        border: "1px solid #dee2e6",
        cursor: "pointer",
        color: "#343a40",
        transition: "0.3s"
    }

    const button_sx = {
        opacity: edit ? "0" : "1",
        cursor: edit ? "default" : "pointer",
        transition: "0.3s",
        boxShadow: "0",
        border: "1.5px solid rgb(56, 142, 60,0)",

        "&:hover": {
            backgroundColor: "#f8f9fa67",
        }
    }

    const save_btn_sx = {
        backgroundColor: "#388E3C",
        color: "white",
        fontFamily: "QuickSand",
        fontWeight: "600",
        letterSpacing: "2px",
        textTransform: "none",
        border: "1.5px solid #388E3C",
        mr: "15px",
        padding: "6px 20px",
        opacity: edit ? "1" : "0",
        cursor: edit ? "pointer" : "default",
        transition: "0.3s",
        "&:hover": {
            backgroundColor: "#308434",
        }
    }

    const cancel_btn_sx = {
        backgroundColor: "white",
        color: "#495057",
        fontFamily: "QuickSand",
        fontWeight: "600",
        letterSpacing: "1.5px",
        textTransform: "none",
        border: "1.5px solid #e9ecef",
        padding: "6px 20px",
        opacity: edit ? "1" : "0",
        cursor: edit ? "pointer" : "default",
        transition: "0.3s",

        "&:hover": {
            backgroundColor: "#f8f9fa",
        }
    }

    const combo_sx = {
        backgroundColor: edit ? "white" : "rgba(255, 255, 255, 0.5)",
        border: "0px solid #ced4da",
        fontFamily: "'QuickSand', sans-serif",
        fontWeight: 'bold'
    }

    const edithandleclick = () => {
        setedit(prev => !prev)
    }

    const handleClick = () => {
        setedit(prev => !prev)
    }

    const [Dataform, setDataform] = useState({
        FirstName: '',
        LastName: '',
        LRN: '',
        Email: '',
        Password: '',
        Confirm: "",
        ExamResult: "",
        SHSstrand: "",
    })

    const [validation, setvalidation] = useState({
        FirstName: '',
        LastName: '',
        Email: '',
        // Password: '',
        // Confirm: "",
    })

    const [field, setfield] = useState([
        { id: "FirstName", label: "First name", max: "21" },
        { id: "LastName", label: "Last name", max: "16" },
        { id: "LRN", label: "LRN", max: "12", validation: "" },
        { id: "Email", label: "Email Address", max: "30" },
        // { id: "Confirm Password", label: "Confirm Password", max: "16" },
        // { id: "New Password", label: "New Password", max: "16" },
        { id: "ExamResult", label: "Exam Result", max: "21" },
        { id: "SHSstrand", label: "SHS Strand (optional)" },
    ])

    const handlechange = (event) => {
        const { name, value } = event.target
        const email = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/
        var password_val = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$/
        const letter = /^[a-z A-Z \b]+$/

        setDataform((prev) => ({
            ...prev,
            [name]: value
        }))

        if (value == "") {
            setvalidation(prev => ({
                ...prev,
                [name]: "Please fill in this required field."
            }))
        } else if (name == "FirstName" || name == "LastName") {
            if (!letter.test(value)) {
                setvalidation(prev => ({
                    ...prev,
                    [name]: "Please Letter only this required field."
                }))
            } else {
                setvalidation(prev => ({
                    ...prev,
                    [name]: ""
                }))
            }
        } else if (name == "Email") {
            if (!email.test(value)) {
                setvalidation(prev => ({
                    ...prev,
                    [name]: "Invalid Email Address(example@gmail.com)"
                }))
            } else {
                setvalidation(prev => ({
                    ...prev,
                    [name]: ""
                }))
            }
        }
        else if (name == "Password") {
            if (!password_val.test(value)) {
                setvalidation(prev => ({
                    ...prev,
                    [name]: "Password should be contain: at least 8 characters, one uppercase letter, one lowercase letter, and one number"
                }))
            } else {
                setvalidation(prev => ({
                    ...prev,
                    [name]: ""
                }))
            }
        } else if (name == "Confirm") {
            if (!password_val.test(value)) {
                setvalidation(prev => ({
                    ...prev,
                    [name]: "Password did not match"
                }))
            } else {
                setvalidation(prev => ({
                    ...prev,
                    [name]: ""
                }))
            }
        }
    }

    const onSubmit = (name) => {
        let a

        const val = Object.values(validation).some(el => el !== "")

        if(!val){
            axios.put(`http://localhost/recommendation_system/api/update`, Dataform).then(function (response) {

            setedit(prev => !prev)
            alert("Update Successfull")
        })
        }
    }

    useEffect(() => {
        axios.get(`http://localhost/recommendation_system/api/${JSON.parse(user).LRN}`).then(function (response) {
            setDataform((prev) => ({
                FirstName: response.data.STUDENT_FIRSTNAME,
                LastName: response.data.STUDENT_LASTNAME,
                LRN: response.data.LRN,
                Email: response.data.EMAIL_ADDRESS,
                // Password: response.data.PASSWORD,
                ExamResult: response.data.EXAM_STATUS,
                SHSstrand: response.data.SHS_TRACK,
                Confirm: ""
            }))
        })
    }, [edit === false])

    const height = windowHeight.current - 70

    const [value, setValue] = React.useState(2);

    const handleChange = (event, newValue) => {
        setValue(newValue);
    };
    return (
        <Zoom in={true} timeout={500}>
            <div className="Profile" style={{ height: height }}>
                <div className="Profile-box">
                    <div className="Profile-Information">
                        <div style={{ padding: "50px" }}>
                            <h1 className="Profile-Information-h1">Student Profile</h1>
                            <div className="Profile-layout">
                                <div className="Profile-Avatar">
                                    <div className="Profile_Avatar">
                                        <p>{JSON.parse(user).FIRSTNAME[0]}</p>
                                        <p>{JSON.parse(user).LASTNAME[0]}</p>
                                    </div>
                                </div>
                                <div className="Profile-info-box">
                                    <div className="Profile-info-header">
                                        <h1 className="info-box-title">Personal Information</h1>
                                        <Button sx={button_sx} onClick={edithandleclick} disabled={edit}>
                                            <EditIcon sx={{ fontSize: "14px", mr: "5px" }}></EditIcon>
                                            Edit Profile
                                        </Button>
                                    </div>
                                    <form>
                                        <div className="Profile-input-container">
                                            {
                                                field.map((fields, index) => {
                                                    const { label, id, max } = fields
                                                    let dis = id == "LRN" || id == "ExamResult"
                                                    return (
                                                        <div key={index}>
                                                            <p>{label}</p>
                                                            {
                                                                fields.id === "SHSstrand" ?
                                                                    <FormControl sx={{ mt: "10px", width: "100%", border: "0px" }} size="small">
                                                                        <Select
                                                                            value={Dataform.SHSstrand}
                                                                            onChange={handlechange}
                                                                            displayEmpty
                                                                            disabled={!edit}
                                                                            sx={combo_sx}
                                                                            name="SHSstrand"
                                                                        >
                                                                            <MenuItem value="">
                                                                                <em>None</em>
                                                                            </MenuItem>
                                                                            <MenuItem value="STEM">STEM (Science, Technology, Engineering, and Mathematics)</MenuItem>
                                                                            <MenuItem value="HUMSS">HUMSS (Humanities and Social Sciences)</MenuItem>
                                                                            <MenuItem value="ABM">ABM (Accounting, Business, and Management)</MenuItem>
                                                                            <MenuItem value="GAS">GAS (General Academic Strand)</MenuItem>
                                                                            <MenuItem value="TVL">TVL (Technical-Vocational Livelihood)</MenuItem>
                                                                        </Select>
                                                                    </FormControl>
                                                                    :
                                                                    <div>
                                                                        <input
                                                                            type="text"
                                                                            placeholder={label}
                                                                            disabled={dis ? true : !edit}
                                                                            value={Dataform[id]}
                                                                            onChange={handlechange}
                                                                            name={id}
                                                                            maxLength={max}
                                                                        />
                                                                        <p className="Validation_user">{validation[id]}</p>
                                                                    </div>
                                                            }
                                                        </div>
                                                    )
                                                })
                                            }
                                        </div>
                                        <div className="Profile-btn-container">
                                            <Button sx={save_btn_sx} disabled={!edit} onClick={onSubmit}>Save Changes</Button>
                                            <Button sx={cancel_btn_sx} onClick={handleClick} disabled={!edit}>Cancel</Button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </Zoom>
    )
}

// const interest = [
//     {
//         Interest: "Realistic",
//         Score: 0,
//         Item: "",
//         Color: "#ff4d6d",
//         Bg: "#ff4d6d4b"
//     },
//     {
//         Interest: "Investigative",
//         Score: 10,
//         Item: "",
//         Color: "#fb8500",
//         Bg: "#fb85004b"
//     },
//     {
//         Interest: "Artistic",
//         Score: 20,
//         Item: "",
//         Color: "#ffc300",
//         Bg: "#ffc3004b"
//     },
//     {
//         Interest: "Social",
//         Score: 30,
//         Item: "",
//         Color: "#52b788",
//         Bg: "#52b7884d"
//     },
//     {
//         Interest: "Enterprising",
//         Score: 40,
//         Item: "",
//         Color: "#00b4d8",
//         Bg: "#00b4d84d"
//     },
//     {
//         Interest: "Conventional",
//         Score: 50,
//         Item: "",
//         Color: "#858ae3",
//         Bg: "858ae34d"
//     },
// ]


// const subject = [
//     {
//         Subject: "Math",
//         Score: "10",
//         Item: "",
//         bg: "#0096c7",
//     },
//     {
//         Subject: "Science",
//         Score: "50",
//         Item: "",
//         bg: "#52b788",
//     },
//     {
//         Subject: "English",
//         Score: "20",
//         Item: "",
//         bg: "#f13030",
//     },
//     {
//         Subject: "History",
//         Score: "40",
//         Item: "",
//         bg: "#f4a261",
//     },
// ]

{/* <p>SHS Strand (optional)</p>
                                                <input
                                                    type="text"
                                                    placeholder="SHS Strand"
                                                    disabled={!edit}
                                                    value={Dataform.SHSstrand}
                                                    onChange={handlechange} 
                                                    name="SHSstrand"/> */}