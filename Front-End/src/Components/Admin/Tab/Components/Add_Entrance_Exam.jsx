import "../../../../css/Admin/Form/Entrance_Exam.css"
import ArrowForwardIosRoundedIcon from '@mui/icons-material/ArrowForwardIosRounded';
import React from "react";
import { Button, Fade, Grow, Zoom, ListItemButton, Collapse } from "@mui/material"
import SettingsOutlinedIcon from '@mui/icons-material/SettingsOutlined';
import LinearProgress from '@mui/material/LinearProgress';
import ExpandLessRoundedIcon from '@mui/icons-material/ExpandLessRounded';
import ExpandMoreRoundedIcon from '@mui/icons-material/ExpandMoreRounded';

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
    { id: 'MATH', label: 'Mathematics', itemNo: 30 },
    { id: 'SCIENCE', label: 'Science', itemNo: 30 },
    { id: 'ENGLISH', label: 'English', itemNo: 20 },
    { id: 'READING_COMPREHENSION', label: 'Reading Comprehension', itemNo: 20 },
]

export default function Add_Entrance_Exam() {
    const [tab, settab] = React.useState(1)
    const [expanded, setexpanded] = React.useState()
    const [Dataform, setDataform] = React.useState()

    const [exam, setexam] = React.useState([
        {
            Subjects:[
                {
                    id: 'Math',
                    ItemNo: 30,
                    Questions:{
                        
                    } 
                }
            ]
        }
    ])
    const stepper = [
        { id: '1', label: 'Basic Information' },
        { id: '2', label: 'Subjects Information' },
        { id: '3', label: 'Settings' },
        { id: '4', label: 'Questions' },
        { id: '5', label: 'Publish' },
    ]

    const buttons = (a) => {
        return (
            <div className="tabs_button">
                {a == '1' || a == '2' ? <Button sx={prevbutton_sx} onClick={() => settab(prev => prev - 1)}>Previous</Button> : <span></span>}
                {a == '2' ? <Button sx={nextbutton_sx} onClick={{}}>Submit</Button> :
                    <Button sx={nextbutton_sx} onClick={() => settab(prev => prev + 1)}>Next</Button>}
            </div>
        )
    }

    const handleopentab = (index) => () => {
        setexpanded(prev => prev == index ? -1 : index)
    }

    let i

    // const QuestionNo = (No) => {
    // //    =<p>{No}</p>
    //     for (i = 0; i < No; i++) {
    //         return <p>{i}</p>  
    //     }
    // }

    const tab1 = (
        <Grow in={true} timeout={800}>
            <div style={{ width: '50%' }}>
                <p className="tab_p1">Basic Information</p>
                <p className="tab_p2">Give your exam a title and description</p>

                <div className="tab1_form">
                    <p>Exam Title <span style={{ color: '#db514cff' }}>*</span></p>
                    <input className="tab_input" placeholder="e.g. Sample Title" />
                    <p>Description/Instruction</p>
                    <input className="tab_input" placeholder="e.g. Sample Title" />
                    <div className="tab1_button">
                        <SettingsOutlinedIcon sx={{ fontSize: '18px' }} />
                        <p>Advanced Information</p>
                    </div>
                </div>
                {buttons()}
            </div>
        </Grow>
    )

    const tab2 = (
        <Zoom in={true} timeout={800}>
            <div style={{ width: '50%' }}>
                <p className="tab_p1">Subjects Information</p>
                <p className="tab_p2">Give your each subject a instructions so it gives clearifications to the students</p>

                <div className="tab1_form">
                    <p>Math <span style={{ color: '#db514cff' }}>*</span></p>
                    <input className="tab_input" placeholder="Instruction I." />
                    <p>Science <span style={{ color: '#db514cff' }}>*</span></p>
                    <input className="tab_input" placeholder="Instruction II." />
                    <p>English <span style={{ color: '#db514cff' }}>*</span></p>
                    <input className="tab_input" placeholder="Instruction III." />
                    <p>Reading Comprehension <span style={{ color: '#db514cff' }}>*</span></p>
                    <input className="tab_input" placeholder="Instruction IV." />
                </div>
                {buttons(1)}
            </div>
        </Zoom>
    )

    const tab3 = (
        <Grow in={true} timeout={800}>
            <div style={{ width: '50%' }}>
                <p className="tab_p1">Settings</p>
                <p className="tab_p2"></p>
                <div className="tab1_form">
                    <p>Math <span style={{ color: '#db514cff' }}>*</span></p>
                    <input className="tab_input" placeholder="Instruction I." />
                </div>
                {buttons(1)}
            </div>
        </Grow>
    )

    const tab4 = (
        <Zoom in={true} timeout={800}>
            <div style={{ width: '100%' }}>
                <p className="tab_p1">Questions</p>
                <p className="tab_p2">Create a Question</p>
                <div className="tab1_form">
                    {
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
                    }
                </div>
                {buttons(1)}
            </div>
        </Zoom>
    )

    const tab5 = (
        <Grow in={true} timeout={800}>
            <div style={{ width: '50%' }}>
                <p className="tab_p1">Publish</p>
                <p className="tab_p2"></p>
                <div className="tab1_form">
                    <p>Math <span style={{ color: '#db514cff' }}>*</span></p>
                    <input className="tab_input" placeholder="Instruction I." />
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
                <p style={{ color: 'rgba(37, 42, 53, 0.6)' }}>Entrance Exam </p>
                <ArrowForwardIosRoundedIcon sx={{ fontSize: '14px' }} />
                <p style={{ fontWeight: '700' }}>Create New Exam</p>
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
            {/* <button onClick={previous}>Previous</button>
            <button onClick={next}>Next</button> */}
            <div className="A_EE_tab1">
                {content(tab)}
            </div>
        </div>
    )
}

// style={{color: '#5d616bff'}}