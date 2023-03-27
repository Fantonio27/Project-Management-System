
import "../../css/User/SAT.css"
import Button from '@mui/material/MenuItem'
import data from '../../assets/Data/sat_questions.js'
import { Box, LinearProgress, Radio } from '@mui/material';
import { useRef } from "react";

export default function SAT() {
    const myRef= useRef(null);
    const executeScroll = () => {
        myRef.current.scrollIntoView();   
    }

    const content = []
    function circle(a) {
        let i;
        for (i = 1; i <= a; i++) {
            content.push(i)
        }
    }

    // const questions = () => {
    //     data.map(info=>{
    //         return(
    //         <div></div>
    //         )
    //     })
    // }

    const time_sx = {
        borderRadius: "20px",
        backgroundColor: 'white',
        '& .MuiLinearProgress-bar': {
            backgroundColor: "#388e3c"
        }
    }

    circle(data.length)

    const button_sx = {
        width: "100px",
        textAlign: "center",
        backgroundColor: "#388e3c"
    }


    return (
        <div className="SAT">
            {/* <div className="SAT_sub_container">
                <div>Math</div>
                <div>Science</div>
                <div>English</div>
                <div>Reading Comprehension</div>
            </div> */}
            <div className="SAT_container">
                <div className="SAT_form">
                    <div className="SAT_header">
                        <p>Scholastic Aptitude Test - Part I - Math</p>
                        <div className="SAT_header_div">
                            <p style={{ width: "45%" }}>Time Limit: 00:50:00</p>
                            <Box sx={{ width: '55%' }}>
                                <LinearProgress variant="determinate" value={10} sx={time_sx} />
                            </Box>
                        </div>
                        <p className="SAT_header_p3">Total Questions: 20</p>
                    </div>
                    <p className="SAT_form_p">Direction: Choose the correct answer by solving each problem and
                        selecting only the best answer from the options provided below.</p>
                    <div className="SAT_question_container">
                        {
                            data.map((info) => (
                                <div className="SAT_question" key={info.No}  ref={myRef}>
                                    <h1 className="SAT_question_h1">Question No: {info.No}</h1>
                                    <p className="SAT_question_p2">{info.Question}</p>
                                    <div className="choices_group">
                                        <div>
                                            <Radio name="Choices" color="success" size="small" /><p>A. {info.Choice_A}</p>
                                        </div>
                                        <div>
                                            <Radio name="Choices" color="success" size="small" /><p>B. {info.Choice_B}</p>
                                        </div>
                                        <div>
                                            <Radio name="Choices" color="success" size="small" /><p>C. {info.Choice_C}</p>
                                        </div>
                                        <div>
                                            <Radio name="Choices" color="success" size="small" /><p>D. {info.Choice_D}</p>
                                        </div>
                                    </div>
                                </div>
                            ))
                        }
                    </div>
                    <Button sx={button_sx} onClick={executeScroll}>Submit</Button>
                </div>
                <div style={{ width: "20%" }}>
                    <div className="Question_Status">
                        <p className="Question_Status_p2">Questions Status</p>
                        <div className="Question_Status_container">
                            {content.map((index) => (
                                <div key={index} className="Questions_circle">
                                    <a style={{textDecoration: "none", color: "#343a40"}} href="#Q1">{index}</a>
                                </div>
                            ))}
                        </div>
                        <div className="status">
                            <div>
                                <div style={{backgroundColor: "#388e3c"}}></div>
                                <p>Answered</p>
                            </div>
                            <div>
                                <div style={{backgroundColor: "#f8f9fa"}}></div>
                                <p>Unanswered</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    )
}
