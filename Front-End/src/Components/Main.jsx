import "../css/Dashboard.css"
import ThumbUpIcon from '@mui/icons-material/ThumbUp';

export default function Main(){
    return(
        <div className="Main">
            <div className="Main-container">
                <ThumbUpIcon 
                    sx={{ width: "75px" , height: "75px"}}
                    className="Main-Likeicon"/>
                <div>
                    <h1>Signed In!</h1>
                    <p className="Main-Text">Students, welcome to the Caloocan High School Examination Website!</p>
                </div>
            </div>
        </div>
    )
}