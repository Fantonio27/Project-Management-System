import "../../../../css/User/Tabs/Components/IA.css"
import LinearProgress from '@mui/material/LinearProgress';
import ThumbDownOffAltRoundedIcon from '@mui/icons-material/ThumbDownOffAltRounded';
import React from "react";
import axios from 'axios'
import { useNavigate, useLocation } from "react-router-dom";

export default function IA() {

    const {state} = useLocation();

    const [examresult, setexamresult] = React.useState()

    const [questions, setquestions] = React.useState([])
    const [questionno, setquestionno] = React.useState(0)
    const [answer, setanswer] = React.useState(
        {
            id:'',
            value: '',
            field: '',
            position: 0,
        }
    )
    const [result, setresult] = React.useState(
        {
            R: 0,
            I: 0,
            A: 0,
            S: 0,
            E: 0,
            C: 0,
        }
    )

    const navigate = useNavigate()

    var totalq = Object.keys(questions).length;

    React.useEffect(() => {
        axios.get(`http://localhost/recommendation_system/api/user/IA_Questions.php`).then(function (response) {
            setquestions(response.data)
        })
        setexamresult(state.data)
    }, [])

    // console.log(examresult)

    const nextquestion = () => {
        setquestionno((prev) => prev + 1)

        if (questionno === 3) {
            navigate("../Exam_Result", {state: {resultia: answer.id, resultexam: examresult}})
            // window.localStorage.setItem('IA_RESULT', JSON.stringify(result))
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
                                        () => setanswer(() => ({
                                            id: q? '' :IAQID,
                                            value: q ? '' : QUESTION,
                                            field: q ? '' : FIELD,
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
                    <button className="IA_button2" disabled={answer.value == '' ? true : false}
                        style={{ opacity: answer.value == '' ? 0 : 1, cursor: answer.value == '' ? "default" : 'pointer' }}
                        onClick={nextquestion}
                    >
                        Next
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