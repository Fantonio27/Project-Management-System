
import "../../../../css/User/Tabs/Components/SAT.css"
import data from '../../../../assets/Data/sat_questions.js'
import { Radio, Button } from '@mui/material';
import * as React from 'react';
import RadioGroup from '@mui/material/RadioGroup';
import FormControlLabel from '@mui/material/FormControlLabel';
import { Link } from "react-router-dom";

const Radiogroup = {
    '& .MuiSvgIcon-root': {
        fontSize: 20,
    },
    // display: 'grid',
    // gridTemplateColumns: '1fr 1fr',
    // gridTemplateRows: '1fr',
    // gap: '0px 0px',
}

const radio = {
    '&:hover': {
        backgroundColor: '#458d6b17'
    },
    borderRadius: '5px',
    transition: '0.3s',
    padding: '8px 0px',
}
export default function SAT() {

    // function roundball(){
    // }

    return (
        <div className="SAT">
            <div className="SAT_container">
                <div className="SAT_header">
                    <p className="SAT_p1">Scholastic Aptitude Test</p>
                    <p className="SAT_p2">Part I - Mathematics</p>
                    <p className="SAT_p3"><b>Directions: </b>Choose the correct answer by solving each problem and
                        selecting only the best answer from the options provided below.</p>
                    <div className="SAT_Questions_container">
                        {
                            data.map((data, index) => {
                                return (
                                    <div className="SAT_Questions" key={data.No}>
                                        <div className="tile">
                                            Question No. {data.No}
                                        </div>
                                        <div className="SAT_form">
                                            <p className="SAT_q1">{data.Question}</p>
                                            <RadioGroup
                                                // defaultValue="female"
                                                name="radio-buttons-group"
                                                sx={Radiogroup}
                                            >
                                                <FormControlLabel sx={radio} value={data.Choice_A} control={<Radio />} label={<p className="SAT_c1"><b>A.</b> {data.Choice_A}</p>} />
                                                <FormControlLabel sx={radio} value={data.Choice_B} control={<Radio />} label={<p className="SAT_c1"><b>B.</b> {data.Choice_B}</p>} />
                                                <FormControlLabel sx={radio} value={data.Choice_C} control={<Radio />} label={<p className="SAT_c1"><b>C.</b>  {data.Choice_C}</p>} />
                                                <FormControlLabel sx={radio} value={data.Choice_D} control={<Radio />} label={<p className="SAT_c1"><b>D.</b> {data.Choice_D}</p>} />
                                            </RadioGroup>
                                        </div>
                                    </div>
                                )
                            })
                        }
                        {/* <div className="SAT_Questions" key={data[1].No}>
                            <div className="tile">
                                Question {data[1].No} of {data.length}
                            </div>
                            <div className="SAT_form">
                                <p className="SAT_q1"><p>{data[1].Question}</p></p>
                                <RadioGroup
                                    aria-labelledby="demo-radio-buttons-group-label"
                                    defaultValue="female"
                                    name="radio-buttons-group"
                                    sx={Radiogroup}
                                >
                                    <FormControlLabel sx={radio} value="female" control={<Radio />} label={<p className="SAT_c1"><b>A.</b> {data[1].Choice_A}</p>} />
                                    <FormControlLabel sx={radio} value="male" control={<Radio />} label={<p className="SAT_c1"><b>B.</b> {data[1].Choice_B}</p>} />
                                    <FormControlLabel sx={radio} value="other" control={<Radio />} label={<p className="SAT_c1"><b>C.</b>  {data[1].Choice_C}</p>} />
                                    <FormControlLabel sx={radio} value="cscs" control={<Radio />} label={<p className="SAT_c1"><b>D.</b> {data[1].Choice_D}</p>} />
                                </RadioGroup>
                            </div>
                        </div> */}
                    </div>
                </div>
                <div className="Question_Status">
                    <div className="Status_div0">
                        <p><b>Time Limit:</b> 00:50:00</p>
                        <p><b>Question Status</b></p>
                        <div className="Status_div">
                            {data.map((val, index) => {
                                return (
                                    <div className="roundball" key={index}>
                                        {val.No}
                                    </div>
                                )
                            })}
                        </div>
                        <div className="Status_div2">

                        </div>
                        <p><b>Subjects</b></p>
                        <div className="Status_div3">
                            <div className="Status_subjects">Math</div>
                            <div className="Status_subjects">Science</div>
                            <div className="Status_subjects">English</div>
                            <div className="Status_subjects">Reading Comprehension</div>
                        </div>
                        <Link to="Interest_Assessment">
                            <Button>Submit</Button>
                        </Link>
                    </div>
                </div>
            </div>
        </div>
    )
}
// export default function SAT() {
//     // const myRef= useRef(null);
//     // const executeScroll = () => {
//     //     myRef.current.scrollIntoView();
//     // }

//     // const content = []
//     // function circle(a) {
//     //     let i;
//     //     for (i = 1; i <= a; i++) {
//     //         content.push(i)
//     //     }
//     // }

//     // // const questions = () => {
//     // //     data.map(info=>{
//     // //         return(
//     // //         <div></div>
//     // //         )
//     // //     })
//     // // }

//     // const time_sx = {
//     //     borderRadius: "20px",
//     //     backgroundColor: 'white',
//     //     '& .MuiLinearProgress-bar': {
//     //         backgroundColor: "#388e3c"
//     //     }
//     // }

//     // circle(data.length)

//     // const button_sx = {
//     //     width: "100px",
//     //     textAlign: "center",
//     //     backgroundColor: "#388e3c"
//     // }


//     return (
//         <div className="SAT">
//             {/* <div className="SAT_sub_container">
//                 <div>Math</div>
//                 <div>Science</div>
//                 <div>English</div>
//                 <div>Reading Comprehension</div>
//             </div> */}
//             <div className="SAT_container">
//                 <div className="SAT_form">
//                     <div className="SAT_header">
//                         <p>Scholastic Aptitude Test - Part I - Math</p>
//                         <div className="SAT_header_div">
//                             <p style={{ width: "45%" }}>Time Limit: 00:50:00</p>
//                             <Box sx={{ width: '55%' }}>
//                                 <LinearProgress variant="determinate" value={10} sx={time_sx} />
//                             </Box>
//                         </div>
//                         <p className="SAT_header_p3">Total Questions: 20</p>
//                     </div>
//                     <p className="SAT_form_p">Direction: Choose the correct answer by solving each problem and
//                         selecting only the best answer from the options provided below.</p>
//                     <div className="SAT_question_container">
//                         {
//                             data.map((info) => (
//                                 <div className="SAT_question" key={info.No}  ref={myRef}>
//                                     <h1 className="SAT_question_h1">Question No: {info.No}</h1>
//                                     <p className="SAT_question_p2">{info.Question}</p>
//                                     <div className="choices_group">
//                                         <div>
//                                             <Radio name="Choices" color="success" size="small" /><p>A. {info.Choice_A}</p>
//                                         </div>
//                                         <div>
//                                             <Radio name="Choices" color="success" size="small" /><p>B. {info.Choice_B}</p>
//                                         </div>
//                                         <div>
//                                             <Radio name="Choices" color="success" size="small" /><p>C. {info.Choice_C}</p>
//                                         </div>
//                                         <div>
//                                             <Radio name="Choices" color="success" size="small" /><p>D. {info.Choice_D}</p>
//                                         </div>
//                                     </div>
//                                 </div>
//                             ))
//                         }
//                     </div>
//                     <Button sx={button_sx} onClick={executeScroll}>Submit</Button>
//                 </div>
//                 <div style={{ width: "20%" }}>
//                     <div className="Question_Status">
//                         <p className="Question_Status_p2">Questions Status</p>
//                         <div className="Question_Status_container">
//                             {content.map((index) => (
//                                 <div key={index} className="Questions_circle">
//                                     <a style={{textDecoration: "none", color: "#343a40"}} href="#Q1">{index}</a>
//                                 </div>
//                             ))}
//                         </div>
//                         <div className="status">
//                             <div>
//                                 <div style={{backgroundColor: "#388e3c"}}></div>
//                                 <p>Answered</p>
//                             </div>
//                             <div>
//                                 <div style={{backgroundColor: "#f8f9fa"}}></div>
//                                 <p>Unanswered</p>
//                             </div>
//                         </div>
//                     </div>
//                 </div>
//             </div>
//         </div>
//     )
// }
