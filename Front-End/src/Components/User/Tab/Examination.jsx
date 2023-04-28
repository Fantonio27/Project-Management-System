
import { Link } from "react-router-dom"
import "../../../css/User/Tabs/Examination.css"
import { useLocation } from "react-router-dom";
import React from "react";
import axios from "axios";
export default function Examination() {

    const [sub, setsub] = React.useState('Math')
    const d = window.localStorage.getItem('USER_DATA')

    React.useEffect(()=>{
        axios.get(`http://localhost/recommendation_system/api/user/Exam_Questions.php?LRN="${JSON.parse(d).LRN}"&&RESULT=ALL`).then(function (response) {
            window.localStorage.setItem('EXAM_QUESTION', JSON.stringify(response.data))
        })
    },[])

    const handleClick = () => {
        axios.post(`http://localhost/recommendation_system/api/user/Exam_Questions.php?LRN="${JSON.parse(d).LRN}"`).then(function (response) {
            console.log(response.data)
        })
    }
    
    return(
        <div className="Examination">
            <h1 className="Dashboard_h1">Examination</h1>
            <Link to={`Scholastic_Aptitude_Test/Math/1`}>
                <button onClick={handleClick}>Take Exam</button>
            </Link>
        </div>
    )
}
