import "../../../../css/User/Tabs/Components/Result.css"
import { Chart as ChartJS, ArcElement, Tooltip, Legend } from 'chart.js';
import { Doughnut } from 'react-chartjs-2';
import LinearProgress from '@mui/material/LinearProgress';
import axios from "axios";
import React from "react";
import Radio from '@mui/material/Radio';
import FormControlLabel from '@mui/material/FormControlLabel';

export default function Result() {

    ChartJS.register(ArcElement, Tooltip, Legend);

    const user = window.localStorage.getItem('USER_DATA')

    const option = {
        animation: {
            duration: 1500,
        },
        cutout: 65,
        plugins: {
            legend: {
                display: false,
                position: "bottom",
                labels: {
                    padding: 15,
                },
            }
        }
    }

    const subject = [
        { id: 'Math', subject: 'Math', choice: 'Choice_A', itemNo: '10' },
        { id: 'Science', subject: 'Science', choice: 'Choice_B', itemNo: '10' },
        { id: 'English', subject: 'English', choice: 'Choice_C', itemNo: '10' },
        { id: 'Reading_Comprehension', subject: 'Reading Comprehension', choice: 'Choice_D', itemNo: '10' },
    ]

    const [subjectans, setsubjectans] = React.useState('Math')
    const [answer, setanswer] = React.useState([{}])
    const [result, setresult] = React.useState([])
    const [subscore, setsubscore] = React.useState({
        Math: '',
        Science: '',
        English: '',
        Reading_Comprehension: '',
    })

    const [iaresult, setiaresult] = React.useState([])

    const [overall, setoverall] = React.useState([])

    React.useEffect(() => {

        axios.get(`http://localhost/recommendation_system/api/user/FetchAllAnser.php?SUBJECT="${subjectans}"&&FETCH=ALL`).then(function (response) {
            setanswer(response.data)
        })
    }, [subjectans])

    React.useEffect(() => {
        axios.get(`http://localhost/recommendation_system/api/user/Result.php?LRN="${JSON.parse(user).LRN}"&&FETCH='EX'`).then(function (response) {
            setresult(response.data)
            // console.log(response.data)
            setsubscore({
                Math: response.data[0].MATH_SCORE,
                Science: response.data[0].SCIENCE_SCORE,
                English: response.data[0].ENGLISH_SCORE,
                Reading_Comprehension: response.data[0].READING_COMPREHENSION_SCORE,
            })
        })

        axios.get(`http://localhost/recommendation_system/api/user/Result.php?LRN="${JSON.parse(user).LRN}"&&FETCH='IA'`).then(function (response) {
            setiaresult(response.data)
        })
        
    }, [])


    const handleClick = (event) => {
        setsubjectans(event.target.value)
    }

    let res = result.length === 0
    const data = {
        labels: ['Correct Answer', 'Incorrect Answer'],
        datasets: [
            {
                label: '# of Answer',
                data: [res ? 0 : result[0].TOTAL_SCORE, res ? 0 : 100 - result[0].TOTAL_SCORE],
                backgroundColor: [
                    'rgba(105, 185, 110, 1)',
                    'rgba(105, 185, 110,0.15)',
                ],
                borderWidth: 0,
            },
        ],
    };

    // console.log(iaresult)

    const recommendation = () => {

        // const high = Object.keys(subscore).reduce((a, b) => subscore[a] > subscore[b] ? a : b)
        // // console.log(high)
        axios.get(`http://localhost/recommendation_system/api/user/Overall.php?LRN="${JSON.parse(user).LRN}"`).then(function (response) {
            setoverall(response.data)
        })
    }

    recommendation()

    return (
        <div className="Exam_Result">
            <p className="Exam_Result_p1">Exam Result</p>
            <div className="Exam_Result_div">
                <div className="Exam_Result_div1">
                    <p className="Exam_Result_p2">OverAll Result</p>
                    <div className="Exam_Result_div2">
                        <div>
                            <p className="Exam_Result_p3">SAT Total Score: </p>
                            <p className="Exam_Result_p4">{res ? 0 : result[0].TOTAL_SCORE}</p>
                        </div>
                        <div>
                            <p className="Exam_Result_p3">IA Output: </p>
                            <p className="Exam_Result_p4">Interested in </p>
                        </div>
                        <div>
                            <p className="Exam_Result_p3">Exam Status: </p>
                            <p className="Exam_Result_p4">{res ? 0 : result[0].EXAM_RESULT}</p>
                        </div>
                        <div>
                            <p className="Exam_Result_p3">Course Recommended: </p>
                            <p className="Exam_Result_p4">{overall.length ===0? '':overall[0].RECOMMENDED_COURSE}</p>
                        </div>
                    </div>
                    <p className="Exam_Result_p2">Scholastic Aptitude Test Result</p>
                    {/* <div className="Exam_chart">
                        <Doughnut data={data} options={option} />
                        <p className="Exam_chart_p1">{result[0].TOTAL_SCORE}</p>
                    </div> */}
                    <div className="Exam_Result_div2" style={{ gap: '25px' }}>
                        {
                            subject.map((val, index) => {
                                return (
                                    <div key={index}>
                                        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', }}>
                                            <p className="Exam_Result_p3">{val.subject}{val.subject === "Reading Comprehension" && <br></br>} Score :</p>
                                            <p className="Exam_Result_p4">{subscore[val.id]}/ {val.itemNo}</p>
                                        </div>
                                        <div style={{ width: '100%', marginTop: '10px' }}>
                                            <LinearProgress variant="determinate" value={subscore[val.id] / val.itemNo * 100} color="success" sx={{ borderRadius: '20px', height: '5px' }} />
                                        </div>
                                    </div>
                                )
                            })
                        }
                    </div>
                    <p className="Exam_Result_p2">Interest Assessment Result</p>
                    <div className="Exam_Result_div2">
                        <div>
                            <p className="Exam_Result_p3">Field Interest:</p>
                            <p className="Exam_Result_p4">{iaresult.length === 0 ? '' : iaresult[0].DEPARTMENT}</p>
                        </div>
                        <div>
                            <p className="Exam_Result_p3">Interest:</p>
                            <p className="Exam_Result_p4">{iaresult.length === 0 ? '' : iaresult[0].ANSWER}</p>
                        </div>
                    </div>
                </div>
                <div className="Exam_Result_div3">
                    <p className="Exam_Result_p2">Subjects</p>
                    <div className="Exam_Result_div4">
                        {
                            subject.map((val) => {
                                return (
                                    <button className="Exam_Result_tab" key={val.subject} onClick={handleClick} value={val.subject}
                                        style={{ border: val.subject === subjectans ? '2px solid #3f6a2bb2' : '2px solid rgba(164, 164, 164, 0.5)' }}>
                                        {val.subject}
                                    </button>
                                )
                            })
                        }
                    </div>
                    <p className="Exam_Result_p2">Review</p>
                    <div className="Exam_Review">
                        <div className="Exam_Review_header">
                            <p>Scholastic Aptitude Test - Math</p>
                            <p>Score: 30/20</p>
                            <p>Attempted on Dec 12, 2022</p>
                            <p>Time Taken: 0:20:17</p>
                        </div>
                        <div className="Exam_Review_body">
                            <div className="Exam_Review_question">
                                {
                                    answer.map((ans, index) => {
                                        return (
                                            <div style={{ borderTop: "2px solid #4e7f3870", padding: '30px' }} key={index}>
                                                <p className="Exam_Review_q1">Question {index + 1}</p>
                                                <p className="Exam_Review_q2">{ans.Question}</p>
                                                <div className="Exam_Review_choice_div">
                                                    {
                                                        subject.map((val, index) => {
                                                            let c = ans.VALUE === ans[val.choice]
                                                            let d = ans.ANSWER === ans[val.choice]
                                                            let a;

                                                            if ((ans.VALUE === ans.ANSWER) === ans[val.choice]) {
                                                                a = 'blue'
                                                            }
                                                            // } else if ((ans.VALUE === ans.ANSWER)) {
                                                            //     a = 'rgba(219, 81, 76, 1)'
                                                            // }
                                                            else {
                                                                a = 'white'
                                                            }

                                                            return (
                                                                <div className="Exam_Review__choice" key={index}
                                                                    style={{
                                                                        borderRadius: index === 3 ? '10px' : '0px'
                                                                    }}
                                                                >
                                                                    <FormControlLabel
                                                                        control={
                                                                            <Radio
                                                                                checked={c}
                                                                                size="small"
                                                                            // color="success"
                                                                            />
                                                                        }
                                                                        label={ans[val.choice]} />
                                                                </div>
                                                            )
                                                        })
                                                    }
                                                </div>
                                            </div>
                                        )
                                    })
                                }
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    )
}