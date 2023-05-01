

import "../../../../css/User/Tabs/Components/SAT.css"
import { Radio, Button } from '@mui/material';
import * as React from 'react';
import RadioGroup from '@mui/material/RadioGroup';
import FormControlLabel from '@mui/material/FormControlLabel';
import axios from "axios";
import { useNavigate } from "react-router-dom";
import Dialog from '@mui/material/Dialog';
import DialogActions from '@mui/material/DialogActions';
import DialogContent from '@mui/material/DialogContent';
import DialogTitle from '@mui/material/DialogTitle';
import Slide from '@mui/material/Slide';
import LinearProgress from '@mui/material/LinearProgress';

const Radiogroup = {
    '& .MuiSvgIcon-root': {
        fontSize: 20,
    },
}

const Transition = React.forwardRef(function Transition(props, ref) {
    return <Slide direction="up" ref={ref} {...props} />;
});

export default function SAT() {

    const navigate = useNavigate()

    const d = window.localStorage.getItem('EXAM_QUESTION')
    const user = window.localStorage.getItem('USER_DATA')

    const [open, setOpen] = React.useState(false);
    const [part, setpart] = React.useState()

    const [questionno, setquestionno] = React.useState(0)
    const [questions, setquestions] = React.useState([{}])
    const [subject, setsubject] = React.useState([])
    const [nextsub, setnextsub] = React.useState(false)
    const [choices, setchoices] = React.useState(['Choice_A', 'Choice_B', 'Choice_C', 'Choice_D'])
    const Letter = ['A', 'B', 'C', 'D']

    const [answer, setanswer] = React.useState([{
        id: '',
        subject: '',
        value: '',
        answer: '',
    }])

    const [minute, setminute] = React.useState(40)
    const [second, setsecond] = React.useState(59)

    const [counter, setcounter] = React.useState([
        {Subject: "Math", answerno : 0},
        {Subject: "Science", answerno : 0},
        {Subject: "English", answerno : 0},
        {Subject: "Reading Comprehension", answerno : 0},
    ])
    React.useEffect(() => {
        if (questions.length > 1) {
            questions.map((data) => {
                axios.post('http://localhost/recommendation_system/api/user/Saves_Answer.php/saves', {
                    id: data.EQID,
                    subject: parts2,
                    value: '',
                    answer: data.Answer,
                    lrn: JSON.parse(user).LRN,
                }).then(function (response) {
                });
            })
        }
    }, [questions])

    React.useEffect(() => {
        if (minute > 0) {
            setTimeout(() => {
                if (second === 0) {
                    setsecond(60)
                    setminute(prev => prev - 1)
                }

                setsecond(prev => prev - 1)
            }, 1000);
        } else if (minute === 0 && second > 0) {
            setTimeout(() => {
                if (minute === 0 && second === 59) {
                    alert("1 minute left")
                }
                setsecond(prev => prev - 1)
            }, 1000);
        } else {
            setOpen(true)
            setsecond(0)
            setminute(0)
        }
    }, [second]);

    const [saveans, setsaveans] = React.useState([])

    //Submit Handle
    const sub = (value) => {

        if (value === "Interest_Assessment") {
            axios.put(`http://localhost/recommendation_system/api/user/Result.php?LRN='${JSON.parse(user).LRN}'`).then(function (response) {
            })
            navigate(`../../${value}`)

            window.localStorage.setItem('EXAM_QUESTION', JSON.stringify(""))
        } else {
            axios.get(`http://localhost/recommendation_system/api/user/Exam_Questions.php?LRN='${JSON.parse(user).LRN}'&&RESULT=ALL`).then(function (response) {
                window.localStorage.setItem('EXAM_QUESTION', JSON.stringify(response.data))
                console.log(response.data)
            })

            navigate(`../${value}/1`)
        }
        reload()
    }

    const reload = () => {
        window.location.reload();
    }

    const parts1 = location.href.split('/').at(-1);
    const parts2 = location.href.split('/').at(-2);

    React.useEffect(() => {
        const choicesrandom = choices.map(value => ({ value, sort: Math.random() }))
            .sort((a, b) => a.sort - b.sort)

        setchoices(choicesrandom)

        setquestions(JSON.parse(d))
        setquestionno(parts1 - 1)

        axios.get(`http://localhost/recommendation_system/api/user/Exam_Information.php?SUBJECT="${parts2}"`).then(function (response) {
            setsubject(response.data)
        });

        if (parts2 === "Math") {
            setpart("I")
        } else if (parts2 === "Science") {
            setpart("Ii")
        } else if (parts2 === "English") {
            setpart("III")
        } else {
            setpart("IV")
        }

    }, [nextsub])

    React.useEffect(() => {
        const idsub = JSON.parse(d)[parts1 - 1].EQID

        axios.get(`http://localhost/recommendation_system/api/user/Saves_Answer.php?ID="${idsub}"&&FETCH=EACH`).then(function (response) {
            let res = response.data === false
            setanswer(obj => ({
                id: res ? "" : response.data.EQID,
                subject: res ? "" : response.data.SUBJECT,
                value: res ? "" : response.data.VALUE,
                answer: res ? "" : response.data.ANSWER
            }
            ))
        });

        axios.get(`http://localhost/recommendation_system/api/user/FetchAllAnser.php?SUBJECT="${parts2}"&&FETCH=EACH&&LRN="${JSON.parse(user).LRN}"`).then(function (response) {
            setsaveans(response.data)
        })

        // for (let i = 0; i < saveans.length; i++) {
        //     if (saveans[i].VALUE !== '') counter++;
        // }
    }, [questionno])

    const handleClick = (i, ans) => (event) => {
        const { value } = event.target

        setanswer(prev => ({
            ...prev,
            value: value
        }))

        // if (answer.id === "" && answer.value == "") {
        //     axios.post('http://localhost/recommendation_system/api/user/Saves_Answer.php/saves', {
        //         id: JSON.parse(d)[parts1 - 1].EQID,
        //         subject: parts2,
        //         value: value,
        //         answer: JSON.parse(d)[parts1 - 1].Answer
        //     }).then(function (response) {
        //     });
        // } else 
        // if (answer.value !== "" || ) {
        axios.put('http://localhost/recommendation_system/api/user/Saves_Answer.php/saves', {
            id: JSON.parse(d)[parts1 - 1].EQID,
            value: value,
        }).then(function (response) {
        });

    }

    const nextquestion = (data) => () => {
        if (data == "submit") {
            setOpen(prev => true)
            // axios.get(`http://localhost/recommendation_system/api/user/Saves_Answer.php?ID="${parts2}"&&FETCH=SUBJECT"`).then(function (response) {

            //     if (response.data.count === Number(subject[0].TOTAL_ITEMS)) {
            //         setOpen(prev => ({
            //             ...prev,
            //             dialog1: true
            //         }))
            //     } else {
            //         setOpen(prev => ({
            //             ...prev,
            //             dialog2: true
            //         }))
            //     }
            // });
        } else {
            setquestionno(prev => prev + 1)
            navigate(`${Number(parts1) + 1}`)
        }
    }

    const prevquestion = () => {
        setquestionno(prev => prev - 1)
        navigate(`${parts1 - 1}`)
    }

    const nextsubject = () => {
        axios.put(`http://localhost/recommendation_system/api/user/Exam_Questions.php?LRN='${JSON.parse(user).LRN}'&&SUBJECT='${parts2}'`).then(function (response) {

            axios.get(`http://localhost/recommendation_system/api/user/Exam_Questions.php?LRN='${JSON.parse(user).LRN}'&&RESULT=s`).then(function (response) {
                sub(response.data)

            })
        })
    }

    const total = subject.length === 0 ? 0 : subject[0].TOTAL_ITEMS

    const setnumber = (index) => {
        let i = index === 1 ? 1 : index
        setquestionno(prev => index - 1)
        navigate(`${i}`)
    }

    // const ArraySubject = ['Math', 'Science', 'English', 'Reading Comprehension']

    return (
        <div className="SAT" >
            <div className="SAT_container">
                <div className="SAT_header">
                    <p className="SAT_p1">Scholastic Aptitude Test</p>
                    <p className="SAT_p2">Part {part} - {subject.length === 0 ? '' : subject[0].SUBJECT}</p>
                    <p className="SAT_p3"><b>Directions: </b>{subject.length === 0 ? '' : subject[0].INSTRUCTION}</p>
                </div>
                <div className="SAT_Questions_container">
                    <div className="SAT_Questions">
                        <div className="tile">
                            Question No. {questionno + 1}
                        </div>
                        <div className="SAT_form">
                            <p className="SAT_q1">{questions.length === 1 ? questions[0].Question : questions[questionno].Question}</p>
                            <RadioGroup
                                name={questions.id}
                                sx={Radiogroup}
                            >
                                {
                                    choices.map(((choices, index) => {
                                        let q = questions.length === 1
                                        let val = q ? questions[0] : questions[questionno]
                                        let def = val[choices.value] === answer.value

                                        return (
                                            <FormControlLabel
                                                key={index}
                                                sx={{
                                                    '&:hover': {
                                                        backgroundColor: 'rgba(69, 141, 107, 0.04)'
                                                    },
                                                    borderRadius: '5px',
                                                    transition: '0.3s',
                                                    padding: '8px 0px',
                                                    border: def ? '1px solid rgb(61, 148, 108,0.4)' : '1px solid rgb(61, 148, 108,0.3)',
                                                    margin: '5px 0px',
                                                    boxShadow: def ? 'rgb(61, 148, 108,0.4) 0px 0px 0px 2px' : 'none'
                                                }}
                                                control={
                                                    <Radio
                                                        checked={def ? true : false}
                                                        name={val[choices.value]}
                                                        onClick={handleClick(index)}
                                                        value={val[choices.value]}
                                                    />
                                                }
                                                label={<div className="SAT_c1" ><b>{Letter[index]}.</b><p>{val[choices.value]}</p></div>}
                                            />
                                        )
                                    }))
                                }
                            </RadioGroup>
                        </div>
                    </div>
                    <div className="SAT_button_group">
                        <div>
                            {questionno > 0 && <button className="SAT_prev_btn" onClick={prevquestion}>Previous</button>}
                        </div>
                        {questionno === total - 1 ?
                            <button onClick={nextquestion("submit")} className="SAT_next_btn">Submit</button>
                            :
                            <button className="SAT_next_btn" onClick={nextquestion(questionno)}>Next</button>
                        }
                    </div>
                </div>

                <div className="Question_Status">
                    <div className="Status_div0">
                        <p><b>Time Limit:</b> 00:{minute < 10 ? '0' : ''}{minute}:{second < 10 ? '0' : ''}{second}</p>
                        <p><b>Question Status</b></p>
                        <div className="Status_div">
                            {questions.map((val, index) => {
                                const equal = (element) => element.VALUE !== "" && element.EQID === val.EQID
                                const fill = saveans.some(equal)
                                // const equal = val.EQID === saveans.EQID
                                // let save = 
                                // saveans.length === 0? '':
                                // saveans[index].EQID && saveans[index].VALUE !== ""
                                // const fillss = (answer.EQID === save)

                                return (
                                    <button
                                        onClick={() => { setnumber(index + 1) }}
                                        className="roundball"
                                        style={{
                                            backgroundColor: fill ? 'rgba(100, 173, 139, 0.8)' : 'rgba(69, 141, 107, 0)',
                                            color: fill ? 'white' : '#252a35ff',
                                            border: fill ? '1px solid #64ad8b64' : '1px solid #64ad8b64',
                                        }} key={index}>
                                        {index + 1}
                                    </button>
                                )
                            })}
                        </div>
                        <div className="Status_div2">
                        </div>
                        <p><b>Subjects</b></p>
                        <div className="Status_div3">
                            {
                                counter.map((sub, index) => {
                                    // const equal = (element) => element.VALUE !== "" && element.VALUE === 
                                    // const fill = saveans.some(equal)
                                    return (
                                        <div className="Status_subjects" key={index}>
                                            <div style={{ display: 'flex', justifyContent: 'space-between' }}>
                                                <p>{sub.Subject}</p>
                                                <p>{sub.answerno}/{questions.length}</p>
                                            </div>
                                            <div style={{ width: '100%', margin: '5px 0px' }}>
                                                <LinearProgress variant="determinate" value={10} color="success" sx={{ borderRadius: '20px', height: '5px' }} />
                                            </div>
                                        </div>
                                    )
                                })
                            }

                            {/* <div className="Status_subjects">Science</div>
                            <div className="Status_subjects">English</div>
                            <div className="Status_subjects">Reading Comprehension</div> */}
                        </div>
                    </div>
                </div>

                {/* FOR SUBMIT */}
                <Dialog
                    open={open}
                    TransitionComponent={Transition}
                    keepMounted
                    onClose={() => setOpen(prev => second === 0 && minute === 0 ? true : false)}
                    aria-describedby="alert-dialog-slide-description"
                >
                    <DialogTitle style={{ borderBottom: '1px solid #dddfe4ff' }}><p className="Confirm_p1">{"Confirmation"}</p></DialogTitle>
                    <DialogContent>
                        <div className="Confirm_p2">
                            Please take a moment to review your answers and ensure that you have provided a response for
                            each question before submitting.Your answers cannot be changed once the form is submitted.
                        </div>
                    </DialogContent>
                    <DialogActions sx={{ display: 'flex', gap: '5px', margin: '5px 15px 10px 0px' }}>
                        {second != 0 && minute >= 0 &&
                            <button className="Confirm_cancel" onClick={() => setOpen(prev => false)}>Cancel</button>
                        }
                        <button className="Confirm_submit" onClick={nextsubject}>Submit</button>
                    </DialogActions>
                </Dialog>
            </div>
        </div>
    )
}
