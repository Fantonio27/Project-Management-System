import "../../../../css/User/Tabs/Components/Result.css"
import { useLocation } from "react-router-dom"
export default function Result() {
    const location = useLocation();
    const resultia = location.state.resultia;
    const resultexam = location.state.resultexam;
    console.log(resultexam)

    // const sortable = Object.fromEntries(
    //     Object.entries(resultia).sort(([, a], [, b]) => b - a)
    // );

    // console.log(Object.entries(sortable)[0])
    // console.log(sortable)

    return (
        <div>
            <p><b>Result IA:</b> {resultia}</p>
            <ul><b>Result Exam:</b>
                <li>Math: {resultexam.result.MATH}</li>
                <li>Science: {resultexam.result.SCIENCE}</li>
                <li>English:{resultexam.result.ENGLISH}</li>
                <li>Reading: {resultexam.result.READING_COMPREHENSION}</li>
            </ul>
        </div>
    )
}