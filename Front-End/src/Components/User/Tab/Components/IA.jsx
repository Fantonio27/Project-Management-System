import "../../../../css/User/Tabs/Components/IA.css"
import LinearProgress from '@mui/material/LinearProgress';
import ThumbDownOffAltRoundedIcon from '@mui/icons-material/ThumbDownOffAltRounded';
import React from "react";
import axios from 'axios'
import { useNavigate, useLocation } from "react-router-dom";

export default function IA() {

    // const {state} = useLocation();
    const user = window.localStorage.getItem('USER_DATA')
    const [examresult, setexamresult] = React.useState()

    const [questions, setquestions] = React.useState([])
    const [questionno, setquestionno] = React.useState(0)
    const [answer, setanswer] = React.useState(
        {
            lrn: JSON.parse(user).LRN,
            id: '',
            value: '',
            field: '',
            position: 0,
            interest: '',
        }
    )

    const navigate = useNavigate()

    var totalq = Object.keys(questions).length;

    React.useEffect(() => {
        axios.get(`http://localhost/recommendation_system/api/user/IA_Questions.php`).then(function (response) {
            setquestions(response.data)
        })
    }, [])

    const nextquestion = (event) => {

        if (event.target.value === 'Submit') {
            axios.post(`http://localhost/recommendation_system/api/user/IA_Questions.php`, answer).then(function (response) {
            })

            axios.get(`http://localhost/recommendation_system/api/user/Result.php?LRN="${JSON.parse(user).LRN}"&&FETCH='EX'`).then(function (response) {

                const subjects = {
                    Math: response.data[0].MATH_SCORE,
                    Science: response.data[0].SCIENCE_SCORE,
                    English: response.data[0].ENGLISH_SCORE,
                    Reading_Comprehension: response.data[0].READING_COMPREHENSION_SCORE,
                }
                const id = response.data[0].ERID

                const high = Object.keys(subjects).reduce((a, b) => subjects[a] > subjects[b] ? a : b)

                axios.get(`http://localhost/recommendation_system/api/user/Result.php?LRN="${JSON.parse(user).LRN}"&&SUBJECT=${high}&&FETCH='VD'`).then(function (response) {
                    const save = {
                        lrn: JSON.parse(user).LRN,
                        course: response.data[0].COURSE_NAME,
                        irid: answer.id,
                        erid: id,
                    }
                    axios.post(`http://localhost/recommendation_system/api/user/Result.php/saves`, save).then(function (response) {

                    })
                })
            })

            navigate("../Exam_Result")
        } else {
            setquestionno((prev) => prev + 1)
        }
    }

    return (
        <div className="IA">
            <p className="IA_p1">Interest Assessment </p>
            <p className="IA_p2">Directions: For the following exam please answer the exam as honestly as you can be because this will
                be the bearing of the recommended results that you would get. For each of the following statements, choose a one statement that describe or you are interest into.</p>
            <div style={{ width: '100%' }}>
                <LinearProgress color="success" value={-1} variant="determinate"
                    sx={{
                        height: '10px',
                        borderTopLeftRadius: '10px',
                        borderTopRightRadius: '10px'
                    }} />
            </div>
            <div className="IA_questions">
                <div className="IA_div0">
                    <p className="IA_q_p1">Question {questionno + 1}</p>
                    <p className="IA_q_p2">Which are you most interested in?</p>
                </div>
                <div className="IA_div">

                    {
                        questions
                            .filter(question => {
                                return (
                                    questionno === 0 ? question.POSITION === `${questionno}` :
                                        question.POSITION === `${questionno}` && question.FIELD === `${answer.field}`
                                );
                            })
                            .map((question, index) => {
                                const { QUESTION, FIELD, POSITION, IAQID } = question
                                const q = answer.value === QUESTION
                                return (
                                    <button key={index} className="IA_button1" value={FIELD} onClick={
                                        () => setanswer((prev) => ({
                                            ...prev,
                                            id: q ? '' : IAQID,
                                            value: q ? '' : QUESTION,
                                            field: q && questionno !== 1? '' : FIELD,
                                            position: q ? '' : POSITION
                                        }))}
                                        style={{
                                            backgroundColor: answer.value === QUESTION ? '#69b96eff' : '',
                                            color: answer.value === QUESTION ? 'white' : '#20353bf1',
                                        }}
                                    >
                                        <p>{question.QUESTION}</p>
                                    </button>
                                );
                            })
                    }
                </div>
                <div className="IA_Button_Group">
                    {questionno === 1 &&
                        <button className="IA_button2"
                            onClick={() => setquestionno(prev => prev - 1)}
                        >
                            Back
                        </button>

                    }
                    <button className="IA_button2"
                        value={questionno === 1 ? 'Submit' : 'Next'}
                        disabled={answer.value == '' ? true : false}
                        style={{ opacity: answer.value == '' ? 0 : 1, cursor: answer.value == '' ? "default" : 'pointer' }}
                        onClick={nextquestion}
                    >
                        {questionno === 1 ? 'Submit' : 'Next'}
                    </button>
                </div>
            </div>
        </div>
    )
}

{/* <button className="IA_button1" onClick={nextquestion(totalq == 0 ? '' : questions[questionno].HIP)} value="YES">
                        <ThumbDownOffAltRoundedIcon
                            sx={{
                                transform: 'rotate(180deg)',
                                fontSize: '40px'
                            }} />
                        <p>YES</p>
                    </button>
                    <button className="IA_button2" onClick={nextquestion()} value="NO">
                        <ThumbDownOffAltRoundedIcon
                            sx={{
                                fontSize: '40px'
                            }} />
                        <p>NO</p>
                    </button> */}

                      //     questions.map((val, index) => {
                    //         if (questions.QUESTION = "Humanities") {
                    //             const {QUESTION, FIELD, POSITION} = val
                    // const q = answer.value === QUESTION
                    // return (
                    // <button key={index} className="IA_button1" value={val.FIELD} onClick={
                    //     () => setanswer(() => ({
                    //         value: q ? '' : QUESTION,
                    //         field: q ? '' : FIELD,
                    //         position: q ? '' : POSITION
                    //     }))}
                    //     style={{
                    //         backgroundColor: answer.value === QUESTION ? '#69b96eff' : 'white',
                    //         color: answer.value === QUESTION ? 'white' : '#20353bf1'
                    //     }}
                    // >
                    //     {/* <p>{val.QUESTION}</p> */}
                    //     <p>1</p>
                    // </button>)
                    //         }
                    // return null
                    //     })
                    // }

                        // const nextquestion = (res) => (event) => {
    //     const { value } = event.target

    //     setanswer(prev => ({
    //         ...prev,
    //         [qn]: value
    //     }))

    //     setquestionno(prev => prev + 1)

    //     let qn = questionno + 1

    //     if (questionno === totalq - 1) {
    //         navigate("../Exam_Result", { state: { resultexam: examresult, resultia: result } })
    //         // {state: {result}}
    //     } else if (res != undefined) {
    //         setresult(prev => ({
    //             ...prev,
    //             [res[0]]: result[res[0]] + 1
    //         }))
    //     }
    // }

    // const nextquestion = () => (event) => {
    //     setquestionno((prev) => prev + 1)
    // }

    // console.log(questionno)