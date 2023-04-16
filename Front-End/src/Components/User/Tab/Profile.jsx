import "../../../css/User/Tabs/User_Profile.css"
import { Avatar, Badge, Box, LinearProgress, Zoom, FormControl, Select, MenuItem } from "@mui/material";
import EditIcon from '@mui/icons-material/Edit';
import CameraIcon from '@mui/icons-material/CameraAltRounded';
import Button from '@mui/material/Button';
import { useState } from "react";
import CircularProgress from '@mui/material/CircularProgress';
import { useLocation } from "react-router-dom";

export default function Profile() {

    const location = useLocation();
    const data = location.state;

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

        "&:hover": {
            backgroundColor: "#f8f9fa67",
            border: "1.5px solid #388E3C"
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
        border: "1.5px solid #ced4da",
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
        border: "0px solid #ced4da"
    }

    const subject = [
        {
            Subject: "Math",
            Score: "10",
            Item: "",
            bg: "#0096c7",
        },
        {
            Subject: "Science",
            Score: "50",
            Item: "",
            bg: "#52b788",
        },
        {
            Subject: "English",
            Score: "20",
            Item: "",
            bg: "#f13030",
        },
        {
            Subject: "History",
            Score: "40",
            Item: "",
            bg: "#f4a261",
        },
    ]

    const interest = [
        {
            Interest: "Realistic",
            Score: 0,
            Item: "",
            Color: "#ff4d6d",
            Bg: "#ff4d6d4b"
        },
        {
            Interest: "Investigative",
            Score: 10,
            Item: "",
            Color: "#fb8500",
            Bg: "#fb85004b"
        },
        {
            Interest: "Artistic",
            Score: 20,
            Item: "",
            Color: "#ffc300",
            Bg: "#ffc3004b"
        },
        {
            Interest: "Social",
            Score: 30,
            Item: "",
            Color: "#52b788",
            Bg: "#52b7884d"
        },
        {
            Interest: "Enterprising",
            Score: 40,
            Item: "",
            Color: "#00b4d8",
            Bg: "#00b4d84d"
        },
        {
            Interest: "Conventional",
            Score: 50,
            Item: "",
            Color: "#858ae3",
            Bg: "858ae34d"
        },
    ]

    const edithandleclick = () => {
        setedit(prev => !prev)
    }

    const handleClick = () => {
        setedit(prev => !prev)
    }

    const [Dataform, setDataform] = useState({
        FirstName: data.FirstName,
        LastName: data.LastName,
        LRN: data.LRN,
        Email: data.Email,
        Password: data.Password,
        Confirm: "",
        ExamResult: "",
        SHSstrand: "",
    })

    const handlechange = (event) => {
        const { name, value } = event.target

        setDataform((prev) => ({
            ...prev,
            [name]: value
        }))
    }
    
    return (
        <Zoom in={true} timeout={500}>
            <div className="Profile">
                <div className="Profile-box">
                    <div className="Profile-Information">
                        <div style={{ padding: "50px" }}>
                            <h1 className="Profile-Information-h1">Student Profile</h1>
                            <div className="Profile-layout">
                                <div className="Profile-Avatar">
                                    <Badge
                                        overlap="circular"
                                        anchorOrigin={{ vertical: 'bottom', horizontal: 'right' }}
                                        badgeContent={
                                            <CameraIcon sx={edit_sx} disabled={!edit}></CameraIcon>
                                        }
                                    >
                                        <Avatar sx={{ width: 110, height: 110 }} />
                                    </Badge>
                                </div>
                                <div className="Profile-info-box">
                                    <div className="Profile-info-header">
                                        <h1 className="info-box-title">Personal Information</h1>
                                        <Button variant="outlined" sx={button_sx} onClick={edithandleclick} disabled={edit}>
                                            <EditIcon sx={{ fontSize: "14px", mr: "5px" }}></EditIcon>
                                            Edit Profile
                                        </Button>
                                    </div>
                                    <form>
                                        <div className="Profile-input-container">
                                            <div>
                                                <p>First name</p>
                                                <input
                                                    type="text"
                                                    placeholder="First name"
                                                    disabled={!edit}
                                                    value={Dataform.FirstName}
                                                    onChange={handlechange}
                                                    name="FirstName" />
                                            </div>
                                            <div>
                                                <p>Last name</p>
                                                <input
                                                    type="text"
                                                    placeholder="Last name"
                                                    disabled={!edit}
                                                    value={Dataform.LastName}
                                                    onChange={handlechange}
                                                    name="LastName" />
                                            </div>
                                            <div>
                                                <p>LRN</p>
                                                <input
                                                    type="text"
                                                    placeholder="Learner Reference Number"
                                                    disabled={!edit} value={Dataform.LRN}
                                                    onChange={handlechange}
                                                    name="LRN" />
                                            </div>
                                            <div>
                                                <p>Email Address</p>
                                                <input
                                                    type="text"
                                                    placeholder="Email Address"
                                                    disabled={!edit}
                                                    value={Dataform.Email}
                                                    onChange={handlechange}
                                                    name="Email" />
                                            </div>
                                            <div>
                                                <p>Password</p>
                                                <input
                                                    type="text"
                                                    placeholder="Password"
                                                    disabled={!edit}
                                                    value={Dataform.Password}
                                                    onChange={handlechange}
                                                    name="Password" />
                                            </div>
                                            <div style={{ display: edit ? "block" : "none" }}>
                                                <p>Confirm Password</p>
                                                <input
                                                    type="text"
                                                    placeholder="Password"
                                                    disabled={!edit}
                                                    value={Dataform.Confirm}
                                                    onChange={handlechange}
                                                    name="Confirm" />
                                            </div>
                                            <div>
                                                <p>SHS Strand (optional)</p>
                                                <FormControl sx={{ mt: "10px", width: "100%", border: "0px" }} size="small">
                                                    <Select
                                                        value={Dataform.SHSstrand}
                                                        onChange={handlechange}
                                                        displayEmpty
                                                        disabled={!edit}
                                                        sx={combo_sx}
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
                                                {/* <p>SHS Strand (optional)</p>
                                                <input
                                                    type="text"
                                                    placeholder="SHS Strand"
                                                    disabled={!edit}
                                                    value={Dataform.SHSstrand}
                                                    onChange={handlechange} 
                                                    name="SHSstrand"/> */}
                                            </div>
                                            <div>
                                                <p>Exam Status</p>
                                                <input
                                                    type="text"
                                                    placeholder="Exam Status"
                                                    disabled={!edit}
                                                    value={Dataform.ExamResult}
                                                    onChange={handlechange}
                                                    name="ExamResult" />
                                            </div>
                                        </div>
                                        <div className="Profile-btn-container">
                                            <Button sx={save_btn_sx} disabled={!edit}>Save Changes</Button>
                                            <Button sx={cancel_btn_sx} onClick={handleClick} disabled={!edit}>Cancel</Button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div className="Profile-container">
                    <div className="Profile-result-exam">
                        <div style={{ padding: "50px" }}>
                            <h1 className="result-title">Scholastic Assessment Test</h1>
                            <p className="result-p">Result:</p>
                            <div className="Profile-subjects">
                                {
                                    subject.map((sub) => (
                                        <div key={sub.Subject} className={`sub ${sub.Subject}`}>
                                            <h1>{sub.Subject}</h1>

                                            <Box sx={{ position: 'relative' }}>
                                                <CircularProgress
                                                    variant="determinate"
                                                    sx={{
                                                        color: "#e9ecef",
                                                    }}
                                                    size={90}
                                                    thickness={3}
                                                    value={100}
                                                />
                                                <CircularProgress
                                                    variant="determinate"

                                                    sx={{
                                                        color: `${sub.bg}`,
                                                        position: "absolute",
                                                        left: 0
                                                    }}
                                                    size={90}
                                                    thickness={3}
                                                    value={sub.Score * 2}
                                                />
                                            </Box>
                                            <div className="sub_score_box">
                                                <p className="sub_score">{sub.Score}</p>
                                                <p className="sub_score_txt">Score</p>
                                            </div>
                                        </div>
                                    ))
                                }
                            </div>
                        </div>
                    </div>
                    <div className="Profile-result-ia">
                        <div style={{ padding: "50px" }}>
                            <h1 className="result-title">Interest Assessment</h1>
                            <p className="result-p">Result:</p>
                            <div className="Profile-interest">
                                {
                                    interest.map((e) => (
                                        <div key={e.Interest} className="interest-div">
                                            <h1>{e.Interest}</h1>
                                            <Box sx={{ width: '100%' }}>
                                                <LinearProgress
                                                    sx={{
                                                        backgroundColor: `${e.Bg}`,
                                                        '& .MuiLinearProgress-bar': {
                                                            backgroundColor: `${e.Color}`
                                                        }
                                                    }}
                                                    variant="determinate"
                                                    value={e.Score}
                                                />
                                            </Box>
                                            <p>{e.Score}</p>
                                        </div>
                                    ))
                                }

                                {/* <div><p>Realistic</p></div>
                            <div><p>Investigative</p></div>
                            <div><p>Artistic</p></div>
                            <div><p>Social</p></div>
                            <div><p>Enterprising</p></div>
                            <div><p>Conventional</p></div> */}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </Zoom>
    )
}
