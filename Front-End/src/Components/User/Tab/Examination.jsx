
import { Link } from "react-router-dom"
import "../../../css/User/Tabs/Examination.css"
import { useLocation } from "react-router-dom";
import React from "react";
import axios from "axios";
import exam from "/Examsbro.svg"
export default function Examination() {

    const [sub, setsub] = React.useState('Math')
    const d = window.localStorage.getItem('USER_DATA')

    const [view, setview]= React.useState(0)

    React.useEffect(() => {
        axios.get(`http://localhost/recommendation_system/api/user/Exam_Questions.php?LRN="${JSON.parse(d).LRN}"&&RESULT=ALL`).then(function (response) {
            window.localStorage.setItem('EXAM_QUESTION', JSON.stringify(response.data))

            axios.get(`http://localhost/recommendation_system/api/user/OverAll.php?LRN="${JSON.parse(d).LRN}"&&RESULT=j`).then(function (response) {
                setview(response.data)

                axios.get(`http://localhost/recommendation_system/api/user/Exam_Questions.php?LRN="${JSON.parse(d).LRN}"&&RESULT=j`).then(function (response) {
                    setsub(`Scholastic_Aptitude_Test/${response.data}/1`)

                    if (response.data === "Interest_Assessment") {
                        setsub(`${response.data}`)
                        window.localStorage.setItem('EXAM_QUESTION', JSON.stringify(""))
                    }
                })
            })
        })
    }, [])

    const handleClick = () => {
        axios.get(`http://localhost/recommendation_system/api/user/Exam_Questions.php?LRN="${JSON.parse(d).LRN}"&&RESULT=USERVALID`).then(function (response) {
            if (response.data.length === 0) {
                axios.post(`http://localhost/recommendation_system/api/user/Exam_Questions.php?LRN="${JSON.parse(d).LRN}"`).then(function (response) {
                })
            }
        })
    }

    return (
        <div className="Examination">
            <div className="Examination_div examtext">
                <p className="Examination_p1">Scholastic Aptitude Test And Interest Assessment</p>
                <p className="Examination_p2">Please note that the examination has two parts: the Scholastic Aptitude Test (SAT),
                    which assesses your capabilities in four subjects, and the Interest Assessment (IA),
                    which evaluates your preferences. Be sure to take both parts of the exam seriously
                    and to the best of your ability, as they will help provide insight into your strengths
                    and interests.</p>
                <p className="Examination_p3">Here are some instructions in taking an online exam:</p>
                <ul>
                    <li>Follow the instructions carefully and answer each question to the best of your ability within the allotted time.</li>
                    <li>Check your answers before submitting your exam to ensure that you have answered all questions and that your responses are accurate.</li>
                    <li>If you encounter any technical issues during the exam, inform the exam administrator immediately for assistance.</li>
                </ul>
                {
                    view.length === 1 ?
                        <Link to={`../Examination/Exam_Result`}>
                            <button onClick={handleClick} className="Exam_btn">View Result</button>
                        </Link>
                        :
                        <Link to={sub}>
                            <button onClick={handleClick} className="Exam_btn">Take Exam</button>
                        </Link>
                }
            </div>
            <div className="Examination_div examimg">
                <img src={exam} className="Exam_img"></img>
            </div>

        </div>
    )
}
