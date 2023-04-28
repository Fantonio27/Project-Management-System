

import "../../../../css/User/Tabs/Components/SAT.css"
import { Radio, Button } from '@mui/material';
import * as React from 'react';
import RadioGroup from '@mui/material/RadioGroup';
import FormControlLabel from '@mui/material/FormControlLabel';
import axios from "axios";
import { useNavigate } from "react-router-dom";
const Radiogroup = {
    '& .MuiSvgIcon-root': {
        fontSize: 20,
    },
}

export default function SAT() {

    const navigate = useNavigate()

    const d = window.localStorage.getItem('EXAM_QUESTION')
    const user = window.localStorage.getItem('USER_DATA')

    const [questionno, setquestionno] = React.useState(0)
    const [questions, setquestions] = React.useState([{}])
    const [subject, setsubject] = React.useState({
        sub: 'eq_math',
        id: 'EQMID',
        limit: 30,
    })

    const [choices, setchoices] = React.useState(['Choice_A', 'Choice_B', 'Choice_C', 'Choice_D'])
    const Letter = ['A', 'B', 'C', 'D']

    const [mathanswer, setmathanswer] = React.useState([])
    const [scienceanswer, setscienceanswer] = React.useState([])
    const [englishanswer, setenglishanswer] = React.useState([])
    const [rcanswer, setrcanswer] = React.useState([])

    // const [questionans, setquestionans] = React.useState();

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
    const [saveindex, setsaveindex] = React.useState([])

    let setsub = (setmathanswer)
    let eachsub = mathanswer
    let reachsub = ""

    if (subject.sub === "eq_math") {
        setsub = (setmathanswer)
        eachsub = mathanswer
        reachsub = "Math"
    } else if (subject.sub === "eq_science") {
        setsub = (setscienceanswer)
        eachsub = scienceanswer
        reachsub = "Science"
    } else if (subject.sub === "eq_english") {
        setsub = (setenglishanswer)
        eachsub = englishanswer
        reachsub = "English"
    } else {
        setsub = (setrcanswer)
        eachsub = rcanswer
        reachsub = "Reading_Comprehension"
    }

    const sub = (value) => {
        const s = (
            value === 'eq_reading_comprehension' ? 'RC' : value[3].toUpperCase()
        )

        setsubject(() => ({
            sub: value,
            id: `EQ${value}ID`,
            limit: '',
        }))

        navigate(`../${value}/1`)

        axios.get(`http://localhost/recommendation_system/api/user/Exam_Questions.php?LRN='${JSON.parse(user).LRN}'&&RESULT=ALL`).then(function (response) {
            window.localStorage.setItem('EXAM_QUESTION', JSON.stringify(response.data))
        })
    }

    const parts1 = location.href.split('/').at(-1);
    const parts2 = location.href.split('/').at(-2);

    React.useEffect(() => {
        const choicesrandom = choices.map(value => ({ value, sort: Math.random() }))
            .sort((a, b) => a.sort - b.sort)

        setchoices(choicesrandom)

        setquestions(JSON.parse(d))
        setquestionno(parts1 - 1)

    }, [subject])

    React.useEffect(() => {
        const idsub = JSON.parse(d)[parts1 - 1][subject.id]

        axios.get(`http://localhost/recommendation_system/api/user/Saves_Answer.php?ID="${idsub}"`).then(function (response) {
            let res = response.data === false
            setanswer(obj => ({
                id: res ? "" : response.data.EQID,
                subject: res ? "" : response.data.SUBJECT,
                value: res ? "" : response.data.VALUE,
                answer: res ? "" : response.data.ANSWER
            }
            ))
        });

        axios.get(`http://localhost/recommendation_system/api/user/FetchAllAnser.php?SUBJECT="${reachsub}"`).then(function (response) {
            setsaveans(response.data)
        })
    }, [questionno])

    const handleClick = (i, ans) => (event) => {
        const { value, name } = event.target

        setanswer(prev => ({
            ...prev,
            value: value
        }))

        if (answer.id === "" && answer.value == "") {
            axios.post('http://localhost/recommendation_system/api/user/Saves_Answer.php/saves', {
                id: JSON.parse(d)[parts1 - 1][subject.id],
                subject: parts2,
                value: value,
                answer: JSON.parse(d)[parts1 - 1].Answer
            }).then(function (response) {

            });
        }else if (answer.value !== "") {
            axios.put('http://localhost/recommendation_system/api/user/Saves_Answer.php/saves', {
                id: JSON.parse(d)[parts1 - 1][subject.id],
                value: answer.value,
            }).then(function (response) {
            });
        }
    }

    const nextquestion = (data) => () => {

        if (data == "submit") {
            axios.get(`http://localhost/recommendation_system/api/user/Exam_Questions.php?LRN='${JSON.parse(user).LRN}'&&RESULT=s`).then(function (response) {
                sub(response.data)
            })
        } else {
            setquestionno(prev => prev + 1)
            navigate(`${Number(parts1) + 1}`)
        }
    }

    const prevquestion = () => {
        setquestionno(prev => prev - 1)
        navigate(`${parts1 - 1}`)
    }

    return (
        <div className="SAT" >
            <div className="SAT_container">
                <div className="SAT_header">
                    <p className="SAT_p1">Scholastic Aptitude Test</p>
                    <p className="SAT_p2">Part I - Mathematics</p>
                    <p className="SAT_p3"><b>Directions: </b>Choose the correct answer by solving each problem and
                        selecting only the best answer from the options provided below.</p>
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
                        {questionno === 19 ?
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
                                const equal = (element) => element.EQID === val[subject.id]
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
                        {/* <button onClick={onSubmit} className="sat_submit_btn">Submit</button> */}
                    </div>
                </div>
            </div>
        </div>
    )
}

        // setanswer(obj => ({
        //     ...obj,
        //     id: JSON.parse(d)[parts1 - 1][subject.id],
        //     subject: reachsub,
        //     value: questionans,
        //     answer: JSON.parse(d)[parts1 - 1].Answer
        // }
        // ))
        // window.localStorage.setItem('EXAM_QUESTION', JSON.stringify(saveindex))
