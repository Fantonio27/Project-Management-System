

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
import DialogContentText from '@mui/material/DialogContentText';
import DialogTitle from '@mui/material/DialogTitle';
import Slide from '@mui/material/Slide';

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

    const [open, setOpen] = React.useState({
        dialog1: false,
        dialog2: false
    });

    const [questionno, setquestionno] = React.useState(0)
    const [questions, setquestions] = React.useState([{}])
    const [subject, setsubject] = React.useState([])
    const [nextsub, setnextsub] = React.useState(false)
    const [choices, setchoices] = React.useState(['Choice_A', 'Choice_B', 'Choice_C', 'Choice_D'])
    const Letter = ['A', 'B', 'C', 'D']

    // const [mathanswer, setmathanswer] = React.useState([])
    // const [scienceanswer, setscienceanswer] = React.useState([])
    // const [englishanswer, setenglishanswer] = React.useState([])
    // const [rcanswer, setrcanswer] = React.useState([])

    const [answer, setanswer] = React.useState([{
        id: '',
        subject: '',
        value: '',
        answer: '',
    }])

    const [result, setresult] = React.useState({
        MATH: 0,
        SCIENCE: 0,
        ENGLISH: 0,
        READING_COMPREHENSION: 0,
    })

    const [saveans, setsaveans] = React.useState([])

    const sub = (value) => {

        if(value === "Interest_Assessment"){
            navigate(`../../${value}`)

            window.localStorage.setItem('EXAM_QUESTION', JSON.stringify(""))
        }else{
            navigate(`../${value}/1`)

            axios.get(`http://localhost/recommendation_system/api/user/Exam_Questions.php?LRN='${JSON.parse(user).LRN}'&&RESULT=ALL`).then(function (response) {
                window.localStorage.setItem('EXAM_QUESTION', JSON.stringify(response.data))
            })
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

        axios.get(`http://localhost/recommendation_system/api/user/FetchAllAnser.php?SUBJECT="${parts2}"`).then(function (response) {
            setsaveans(response.data)
        })
    }, [questionno])

    const handleClick = (i, ans) => (event) => {
        const { value } = event.target

        setanswer(prev => ({
            ...prev,
            value: value
        }))

        if (answer.id === "" && answer.value == "") {
            axios.post('http://localhost/recommendation_system/api/user/Saves_Answer.php/saves', {
                id: JSON.parse(d)[parts1 - 1].EQID,
                subject: parts2,
                value: value,
                answer: JSON.parse(d)[parts1 - 1].Answer
            }).then(function (response) {
                console.log(response.data)
            });
        } else if (answer.value !== "") {
            axios.put('http://localhost/recommendation_system/api/user/Saves_Answer.php/saves', {
                id: JSON.parse(d)[parts1 - 1].EQID,
                value: value,
            }).then(function (response) {
            });
        }
    }

    console.log(subject)

    const nextquestion = (data) => () => {

        if (data == "submit") {
            axios.get(`http://localhost/recommendation_system/api/user/Saves_Answer.php?ID="${parts2}"&&FETCH=SUBJECT"`).then(function (response) {

                if (response.data.count === Number(subject[0].TOTAL_ITEMS)) {
                    setOpen(prev => ({
                        ...prev,
                        dialog1: true
                    }))
                } else {
                    setOpen(prev => ({
                        ...prev,
                        dialog2: true
                    }))
                }
            });
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
            console.log(response.data)
            axios.get(`http://localhost/recommendation_system/api/user/Exam_Questions.php?LRN='${JSON.parse(user).LRN}'&&RESULT=s`).then(function (response) {
                sub(response.data)
                console.log(response.data)
            })
        })
    }

    const total = subject.length === 0 ? 0 : subject[0].TOTAL_ITEMS

    return (
        <div className="SAT" >
            <div className="SAT_container">
                <div className="SAT_header">
                    <p className="SAT_p1">Scholastic Aptitude Test</p>
                    <p className="SAT_p2">Part I - {subject.length === 0 ? '' : subject[0].SUBJECT}</p>
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
                        <p><b>Time Limit:</b> 00:50:00</p>
                        <p><b>Question Status</b></p>
                        <div className="Status_div">
                            {questions.map((val, index) => {
                                const equal = (element) => element.EQID === val.EQID
                                const fill = saveans.some(equal)
                                return (
                                    <div
                                        className="roundball"
                                        style={{
                                            backgroundColor: fill ? '#45786026' : 'none'
                                        }} key={index}>
                                        {index + 1}
                                    </div>
                                )
                            })}
                        </div>
                        <div className="Status_div2">
                        </div>
                        <p><b>Subjects</b></p>
                        <div className="Status_div3">
                            <button className="Status_subjects" value="eq_math">Math</button>
                            <button className="Status_subjects" value="eq_science">Science</button>
                            <button className="Status_subjects" value="eq_english" >English</button>
                            <button className="Status_subjects" value="eq_reading_comprehension">Reading Comprehension</button>
                        </div>
                    </div>
                </div>

                {/* FOR SUBMIT */}
                <Dialog
                    open={open.dialog1}
                    TransitionComponent={Transition}
                    keepMounted
                    onClose={() => setOpen(prev => ({ ...prev, dialog1 : false}))}
                    aria-describedby="alert-dialog-slide-description"
                >
                    <DialogTitle>{"Submit"}</DialogTitle>
                    <DialogContent>
                        <DialogContentText id="alert-dialog-slide-description">
                            next subject
                            <button onClick={nextsubject}>nextsubject</button>
                        </DialogContentText>
                    </DialogContent>
                    <DialogActions>
                        <Button onClick={() => setOpen(prev => ({ ...prev, dialog1: false }))}>Ok</Button>
                    </DialogActions>
                </Dialog>

                {/* FOR Confirmation */}
                <Dialog
                    open={open.dialog2}
                    TransitionComponent={Transition}
                    keepMounted
                    onClose={() => setOpen(prev => ({ ...prev, dialog2 : false}))}
                    aria-describedby="alert-dialog-slide-description"
                >
                    <DialogTitle>{"Error"}</DialogTitle>
                    <DialogContent>
                        <DialogContentText id="alert-dialog-slide-description">
                            not complete
                        </DialogContentText>
                    </DialogContent>
                    <DialogActions>
                        <Button onClick={() => setOpen(prev => ({ ...prev, dialog2: false }))}>Ok</Button>
                    </DialogActions>
                </Dialog>
            </div>
        </div>
    )
}
