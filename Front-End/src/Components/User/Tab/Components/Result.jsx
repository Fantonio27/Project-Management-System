import "../../../../css/User/Tabs/Components/Result.css"
import { useLocation } from "react-router-dom"
export default function Result() {
    const location = useLocation();
    const resultia = location.state.resultia;
    const resultexam = location.state.resultexam;
    // console.log(result.resultdata)

    const sortable = Object.fromEntries(
        Object.entries(resultia).sort(([, a], [, b]) => b - a)
    );

    // console.log(Object.entries(sortable)[0])
    // console.log(sortable)

    return (
        <div>
            <p><b>Result Exam:</b> {resultexam}</p>
            <ul><b>Result IA</b>
                <li>Top1: {Object.keys(sortable)[0]} : {Object.values(sortable)[0]}</li>
                <li>Top2:  {Object.keys(sortable)[1]} : {Object.values(sortable)[1]}</li>
                <li>Top3:  {Object.keys(sortable)[2]} : {Object.values(sortable)[2]}</li>
            </ul>
        </div>
    )
}