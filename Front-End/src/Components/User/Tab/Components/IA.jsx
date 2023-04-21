import "../../../../css/User/Tabs/Components/IA.css"
import LinearProgress from '@mui/material/LinearProgress';
import ThumbDownOffAltRoundedIcon from '@mui/icons-material/ThumbDownOffAltRounded';
import React from "react";
import axios from 'axios'
import { useNavigate, useLocation} from "react-router-dom";

export default function IA() {

    let { state } = useLocation();
    
    const [examresult, setexamresult] = React.useState()

    const [questions, setquestions] = React.useState({})
    const [questionno, setquestionno] = React.useState(0)
    const [answer, setanswer] = React.useState()
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
        setexamresult(state.sub)
    }, [])

    const nextquestion = (res) => (event) => {
        const { value } = event.target

        setanswer(prev => ({
            ...prev,
            [qn]: value
        }))

        setquestionno(prev => prev + 1)

        let qn = questionno + 1

        if (questionno === totalq - 1) {
            navigate("../Exam_Result", {state: { resultexam: examresult, resultia: result }})
            // {state: {result}}
        } else if (res != undefined) {
            setresult(prev => ({
                ...prev,
                [res[0]]: result[res[0]] + 1
            }))
        }
    }

    // console.log(result)

    return (
        <div className="IA">
            <p className="IA_p1">Interest Assessment </p>
            <p className="IA_p2">Directions: For the following exam please answer the exam as honestly as you can be because this will
                be the bearing of the recommended results that you would get. For each of the following statements, choose a Yes if the statement describes you, or choose a No if the statement does not describe you.</p>
            <div style={{ width: '100%' }}>
                <LinearProgress color="success" value={0} variant="determinate"
                    sx={{
                        height: '10px',
                        borderTopLeftRadius: '10px',
                        borderTopRightRadius: '10px'
                    }} />
            </div>
            <div className="IA_questions">
                <div className="IA_div0">
                    <p className="IA_q_p1">Question {questionno + 1} of {totalq}</p>
                    <p className="IA_q_p2">I like to {totalq == 0 ? '' : questions[questionno].QUESTION}</p>
                </div>
                <div className="IA_div">
                    <button className="IA_button1" onClick={nextquestion(totalq == 0 ? '' : questions[questionno].HIP)} value="YES">
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
                    </button>
                </div>
            </div>
        </div>
    )
}