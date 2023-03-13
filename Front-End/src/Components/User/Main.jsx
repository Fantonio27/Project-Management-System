import "../../css/Main.css"
import Image from "../../assets/Images/undraw_happy_announcement_re_tsm0 (1).svg"

export default function Main() {
    return (
        <div className="Main">
            <h1 className="Dashboard_h1">Dashboard</h1>
            <div className="Main-container">
                <img src={Image} className="Main-Image"></img>
                <div className="Main-Box">
                    <h2>Signed In!</h2>
                    <p className="Main-Text">Students, welcome to the Caloocan High School Examination Website!</p>
                </div>

            </div>
        </div>
    )
}