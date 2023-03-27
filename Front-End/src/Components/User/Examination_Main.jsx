
import { Link } from "react-router-dom"
import "../../css/User/Examination_Main.css"
import { useLocation } from "react-router-dom";

export default function Examination() {
    const location = useLocation();
    const data = location.state;

    return(
        <div className="Examination">
            <h1 className="Dashboard_h1">Examination</h1>
            <Link to="Scholastic_Aptitude_Test" state={data}>
                <button>Take Exam</button>
            </Link>
        </div>
    )
}
