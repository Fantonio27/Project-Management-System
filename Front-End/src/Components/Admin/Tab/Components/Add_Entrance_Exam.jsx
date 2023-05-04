import "../../../../css/Admin/Form/Entrance_Exam.css"
import ArrowForwardIosRoundedIcon from '@mui/icons-material/ArrowForwardIosRounded';
import React from "react";
import { Button, Fade, Grow, Zoom, ListItemButton, Collapse } from "@mui/material"
import SettingsOutlinedIcon from '@mui/icons-material/SettingsOutlined';
import LinearProgress from '@mui/material/LinearProgress';
import ExpandLessRoundedIcon from '@mui/icons-material/ExpandLessRounded';
import ExpandMoreRoundedIcon from '@mui/icons-material/ExpandMoreRounded';
import InputLabel from '@mui/material/InputLabel';
import MenuItem from '@mui/material/MenuItem';
import FormControl from '@mui/material/FormControl';
import Select from '@mui/material/Select';
import axios from "axios";

const center = {
    justifyContent: 'center'
}
const prevbutton_sx = {
    padding: '5px 20px',
    border: '1px solid #E9ECEF',
    color: '#505161ff',
    textTransform: 'none',
    fontFamily: 'Poppins',
    letterSpacing: '1px',
    boxShadow: 'rgba(149, 157, 165, 0.05) 0px 8px 24px',
    transition: '0.5s',
    backgroundColor: 'white',

    '&:hover': {
        backgroundColor: 'rgb(92, 166, 97, 0.05)'
    }
}

const nextbutton_sx = {
    padding: '5px 30px',
    border: '1px solid #F8F9FA',
    color: 'white',
    textTransform: 'none',
    fontFamily: 'Poppins',
    letterSpacing: '1px',
    boxShadow: 'rgba(0, 0, 0, 0.08) 0px 4px 12px',
    transition: '0.5s',
    backgroundColor: '#69b96eff',
    '&:hover': {
        backgroundColor: 'rgb(92, 166, 97)'
    }
}

const subjects = [
    { id: 'eq_math', label: 'Mathematics', itemNo: 30 },
    { id: 'eq_science', label: 'Science', itemNo: 30 },
    { id: 'eq_english', label: 'English', itemNo: 20 },
    { id: 'eq_reading_comprehension', label: 'Reading Comprehension', itemNo: 20 },
]

export default function Add_Entrance_Exam() {
    const [tab, settab] = React.useState(1)
    const [expanded, setexpanded] = React.useState()

    const [subjectinfo, setsubjectinfo] = React.useState([])
    const [sub, setsub] = React.useState("eq_math")
    const [questionno, setquestionno] = React.useState(0)

    const [question, setquestion] = React.useState([])
    const [exam, setexam] = React.useState([
        {
            Subjects: [
                {
                    id: 'Math',
                    ItemNo: 30,
                    Questions: {

                    }
                }
            ]
        }
    ])

    const stepper = [
        // { id: '1', label: 'Basic Information' },
        { id: '1', label: 'Subjects Information' },
        { id: '2', label: 'Settings' },
        { id: '3', label: 'Questions' },
        { id: '4', label: 'Save' },
    ]

    const buttons = (a) => {
        return (
            <div className="tabs_button">
                {a !== 0 ? <Button sx={prevbutton_sx} onClick={() => settab(prev => prev - 1)}>Previous</Button> : <span></span>}
                {a == '2' ? <Button sx={nextbutton_sx} onClick={{}}>Update</Button> :
                    <Button sx={nextbutton_sx} onClick={() => settab(prev => prev + 1)}>Next</Button>}
            </div>
        )
    }

    const handleopentab = (index) => () => {
        setexpanded(prev => prev == index ? -1 : index)
    }

    let i

    React.useEffect(() => {
        axios.get(`http://localhost/recommendation_system/api/admin/SAT.php?FETCH='SUBJECT'`).then(function (response) {
            setsubjectinfo(response.data)
        })

        axios.get(`http://localhost/recommendation_system/api/admin/SAT.php?FETCH=${sub}`).then(function (response) {
            setquestion(response.data)
        })
    }, [sub])

    // const QuestionNo = (No) => {
    // //    =<p>{No}</p>
    //     for (i = 0; i < No; i++) {
    //         return <p>{i}</p>  
    //     }
    // }

    // const tab1 = (
    //     <Grow in={true} timeout={800}>
    //         <div style={{ width: '50%' }}>
    //             <p className="tab_p1">Basic Information</p>
    //             <p className="tab_p2">Give your exam a title and description</p>

    //             <div className="tab1_form">
    //                 <p>Exam Title <span style={{ color: '#db514cff' }}>*</span></p>
    //                 <input className="tab_input" placeholder="e.g. Sample Title" />
    //                 <p>Description/Instruction</p>
    //                 <input className="tab_input" placeholder="e.g. Sample Title" />
    //                 <div className="tab1_button">
    //                     <SettingsOutlinedIcon sx={{ fontSize: '18px' }} />
    //                     <p>Advanced Information</p>
    //                 </div>
    //             </div>
    //             {buttons()}
    //         </div>
    //     </Grow>
    // )

    // console.log(question)

    const onChangehandle = () => {

    }

    const tab1 = (
        <Zoom in={true} timeout={800}>
            <div style={{ width: '90%' }}>
                <p className="tab_p1">Subjects Information</p>
                <p className="tab_p2">Give your each subject a instructions so it gives clearifications to the students</p>

                <div className="tab1_form">
                    {
                        subjectinfo.map((sub, index) => {
                            return (
                                <div key={index}>
                                    <p className="Tab_title">{sub.SUBJECT} Instruction</p>
                                    <textarea
                                        // id="INFORMATION"
                                        name={sub.SUBJECT}
                                        className="tab_input"
                                        style={{ height: "100px" }}
                                        placeholder={`${sub.SUBJECT} Description`}
                                        value={sub.INSTRUCTION}
                                        onChange={onChangehandle}
                                        // minLength={7}
                                        // maxLength={16}
                                        required
                                    />
                                </div>
                            )
                        })
                    }
                </div>
                {buttons(0)}
            </div>
        </Zoom>
    )

    const tab2 = (
        <Grow in={true} timeout={800}>
            <div style={{ width: '50%' }}>
                <p className="tab_p1">Settings</p>
                <p className="tab_p2"></p>
                <div className="tab1_form">
                    {
                        subjectinfo.map((sub, index) => {
                            return (
                                <div key={index}>
                                    <p>{sub.SUBJECT} Settings</p>

                                    <div style={{ display: 'flex' }}>
                                        <input type="text" className="tab_input" style={{ width: '30px' }}></input>
                                        <FormControl size="small" sx={{ width: '100px', margin: '10px 20px' }}>
                                            <InputLabel id="demo-simple-select-label">Hour</InputLabel>
                                            <Select
                                                labelId="demo-simple-select-label"
                                                id="demo-simple-select"
                                                value=""
                                                label="Hour"
                                            // onChange={handleChange}
                                            >
                                                <MenuItem value={0} sx={center}>0</MenuItem>
                                                <MenuItem value={1} sx={center}>1</MenuItem>
                                                <MenuItem value={2} sx={center}>2</MenuItem>
                                                <MenuItem value={3} sx={center}>3</MenuItem>
                                            </Select>
                                        </FormControl>
                                        <FormControl size="small" sx={{ width: '100px', margin: '10px 0px' }}>
                                            <InputLabel id="demo-simple-select-label">Minutes</InputLabel>
                                            <Select
                                                labelId="demo-simple-select-label"
                                                id="demo-simple-select"
                                                value=""
                                                label="Minutes"
                                            // onChange={handleChange}
                                            >
                                                <MenuItem value={0} sx={center}>0</MenuItem>
                                                <MenuItem value={1} sx={center}>1</MenuItem>
                                                <MenuItem value={2} sx={center}>2</MenuItem>
                                                <MenuItem value={3} sx={center}>3</MenuItem>
                                            </Select>
                                        </FormControl>
                                    </div>
                                </div>
                            )
                        })
                    }
                </div>
                {buttons(1)}
            </div>
        </Grow>
    )

    let no = question.length === 0
    const tab3 = (
        <Zoom in={true} timeout={800}>
            <div style={{ width: '100%' }}>
                <p className="tab_p1">Questions</p>
                <div className="box_choices">
                    {
                        subjects.map((sub, index) => {
                            return (
                                <div key={index} className="EE_subject" onClick={()=>setsub(sub.id)}>{sub.label}</div>
                            )
                        })
                    }
                </div>
                <div className="tab3_form">
                    <p>{no ? "" : question[questionno].Question}</p>
                    <p>{no ? "" :question[questionno].Choice_A}</p>
                    <p>{no ? "" :question[questionno].Choice_B}</p>
                    <p>{no ? "" :question[questionno].Choice_C}</p>
                    <p>{no ? "" :question[questionno].Choice_D}</p>
                    <button onClick={()=>setquestionno(prev => prev - 1)}>Back</button>
                    <button onClick={()=>setquestionno(prev => prev + 1)}>Next</button>
                </div>
                {buttons(1)}
            </div>
        </Zoom>
    )

    const tab4 = (
        <Grow in={true} timeout={800}>
            <div style={{ width: '50%' }}>
                <p className="tab_p1">Save</p>
                <p className="tab_p2"></p>
                <div className="tab1_form">
                    <p>Are you sure you want to update this</p>
                </div>
                {buttons(2)}
            </div>
        </Grow>
    )

    function content(a) {
        if (a === 1) {
            return (
                tab1
            )
        } else if (a === 2) {
            return tab2
        } else if (a === 3) {
            return tab3
        } else if (a === 4) {
            return tab4
        } else if (a === 5) {
            return tab5
        }
    }
    return (
        <div className="Add_Entrance_Exam">
            <div className="A_EE_BreadCrumbs">
                <p style={{ color: 'rgba(37, 42, 53, 0.6)' }}>Examination </p>
                <ArrowForwardIosRoundedIcon sx={{ fontSize: '14px' }} />
                <p style={{ fontWeight: '700' }}>Scholastic Aptitude Test</p>
            </div>
            <div className="A_EE_Stepper">
                {
                    stepper.map((val, index) => {
                        const bool = tab < val.id
                        return (
                            <div className="A_EE_S_div" key={index}>
                                <div
                                    className="A_EE_S_Circle"
                                    style={{
                                        backgroundColor: bool ? '' : '#69b96eff',
                                        color: bool ? '#252a35ff' : 'white',
                                        border: bool ? '1px solid #DEE2E6' : '1px solid #F8F9FA'
                                    }}
                                >
                                    {val.id}
                                </div>
                                <p style={{
                                    color: bool ? 'rgba(37, 42, 53, 0.6)' : '#252a35ff'
                                }}>{val.label}</p>
                                {val.id < stepper.length ? <ArrowForwardIosRoundedIcon sx={{ fontSize: '14px', color: '#CED4DA', ml: 2 }} /> : ''}
                            </div>

                        )
                    })
                }
            </div>
            <div className="A_EE_tab1">
                {content(tab)}
            </div>
        </div>
    )
}

// style={{color: '#5d616bff'}}

  {/* {
                        subjects.map((val, index) => {
                            const { id, label, itemNo } = val
                            return (
                                <div key={id}>
                                    <ListItemButton onClick={handleopentab(index)}
                                        sx={{
                                            display: "flex",
                                            gap: "15px",
                                            alignItems: "center",
                                            justifyContent: 'space-between',
                                            backgroundColor: expanded === index ? "rgb(67, 160, 71,0.05)" : 'none',
                                            border: '1px solid #E9ECEF',
                                            borderBottom: index === 3 ? '1px solid #E9ECEF' : '0px',
                                            "&:hover": {
                                                backgroundColor: "rgb(67, 160, 71,0.05)"
                                            }
                                        }}
                                    >
                                        <div className="tabs_linear">
                                            <p className="tabs_p3">{label}</p>
                                        </div>
                                        <div className="tabs_linear">
                                            <div style={{ width: '100%' }}>
                                                <LinearProgress variant="determinate" value={0} sx={{ borderRadius: '20px' }} />
                                            </div>
                                            <p>0/{itemNo}</p>
                                            <ExpandLessRoundedIcon sx={{ transform: expanded ? 'rotate(0deg)' : 'rotate(-180deg)', transition: '0.3s' }} />
                                        </div>
                                    </ListItemButton>
                                    <Collapse in={expanded === index} timeout="auto" unmountOnExit sx={{ border: '1px solid #E9ECEF', borderBottom: '0px' }}>
                                        <div className="tabs_questions">
                                            <div className="CHOICEA">
                                                <p>Choice A <span style={{ color: '#db514cff' }}>*</span></p>
                                                <input className="tab_input" placeholder="Instruction I." />
                                            </div>
                                            <div className="CHOICEB">
                                                <p>Choice B <span style={{ color: '#db514cff' }}>*</span></p>
                                                <input className="tab_input" placeholder="Instruction I." />
                                            </div>
                                            <div className="CHOICEC">
                                                <p>Choice C <span style={{ color: '#db514cff' }}>*</span></p>
                                                <input className="tab_input" placeholder="Instruction I." />
                                            </div>
                                            <div className="CHOICED">
                                                <p>Choice D <span style={{ color: '#db514cff' }}>*</span></p>
                                                <input className="tab_input" placeholder="Instruction I." />
                                            </div>
                                            <div className="Question">
                                                <p>Question No. 1 <span style={{ color: '#db514cff' }}>*</span></p>
                                                <input className="tab_input" placeholder="Instruction I." />
                                            </div>
                                            <div className="questionstatus">
                                                <p>Question No.</p>
                                                {
                                                    // QuestionNo(itemNo)
                                                }
                                            </div>
                                            <div className="answer">
                                                Answer
                                            </div>
                                        </div>
                                        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                                            <button className="tabs_question_qbutton">
                                                <ExpandLessRoundedIcon sx={{ transform: 'rotate(-90deg)', fontSize: '20px' }} />
                                                Previous Question
                                            </button>
                                            <button className="tabs_question_nbutton">
                                                Next Question
                                                <ExpandLessRoundedIcon sx={{ transform: 'rotate(90deg)', fontSize: '20px' }} />
                                            </button>
                                        </div>
                                    </Collapse>
                                </div>
                            )
                        })
                    } */}