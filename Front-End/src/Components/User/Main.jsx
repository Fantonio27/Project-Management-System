import "../../css/Main.css"
import Image from "../../assets/Images/undraw_happy_announcement_re_tsm0 (1).svg"
import { Fade, Button } from "@mui/material"
import ProfileIcon from '@mui/icons-material/ManageAccountsOutlined';
import ExamIcon from '@mui/icons-material/NoteAltOutlined';
import FeedOutlinedIcon from '@mui/icons-material/FeedOutlined';
import QuestionMarkOutlinedIcon from '@mui/icons-material/QuestionMarkOutlined';
import { Link, useLocation, useOutletContext } from "react-router-dom";

export default function Main() {

    const location = useLocation();
    const {passvalue} = useOutletContext()
    
    const button_sx = {
        fontFamily: "'Lato', sans-serif",
        fontSize: "12px",
        fontWeight: "bold",
        padding: "5px 0px",
    }

    const arrow_sx = {
        fontSize: "17px"
    }

    const container = [
        {
            icon: <ProfileIcon sx={{
                backgroundColor: "#f8f9fa7b",
                padding: "5px",
                border: "1px solid #e9ecef",
                borderRadius: "5px",
                color: "#1e88e5"
            }} />,
            title: "User Profile",
            text: "View and Edit your personal student information ",
            link: "Profile",
            buttontxt: "View Profile",
        },

        {
            icon: <FeedOutlinedIcon sx={{
                backgroundColor: "#f8f9fa7b",
                padding: "5px",
                border: "1px solid #e9ecef",
                borderRadius: "5px",
                color: "#ea638c"
            }} />,
            title: "Course Directory",
            text: "Search and Read information about college courses",
            link: "Course_Diretory",
            buttontxt: "View Courses",
        },

        {
            icon: <ExamIcon sx={{
                backgroundColor: "#f8f9fa7b",
                padding: "5px",
                border: "1px solid #e9ecef",
                borderRadius: "5px",
                color: "#52b788"
            }} />,
            title: "Examination",
            text: "Answer the examination and view your results after",
            link: "Examination",
            buttontxt: "View Exam",
        },

        {
            icon: <QuestionMarkOutlinedIcon sx={{
                backgroundColor: "#f8f9fa7b",
                padding: "5px",
                border: "1px solid #e9ecef",
                borderRadius: "5px",
                color: "#ffd100"
            }} />,
            title: "Help Section",
            text: "Get Assistance and knowledge as you use the website",
            link: "Help",
            buttontxt: "Learn More",
        },
    ]
    return (
        <Fade in={true} timeout={1000}>
            <div className="Main">
                <h1 className="Dashboard_h1">Dashboard</h1>
                <div className="Main-div">
                    {
                        container.map((e) => (
                            <div className="Main-container" key={e.title}>
                                {e.icon}
                                <div className="Main-Box">
                                    <h2>{e.title}</h2>
                                    <p className="Main-Text">{e.text}</p>
                                    {/* <Link to={e.link} style={{textDecoration: "none"}} state={location.state}>
                                        <Button sx={button_sx}>{e.buttontxt}</Button>
                                    </Link> */}
                                    <Button sx={button_sx}>{e.buttontxt}</Button>
                                </div>
                            </div>
                        ))
                    }
                </div>

                {/* <div className="Main-container">
                    <img src={Image} className="Main-Image"></img>
                    <div className="Main-Box">
                        <h2>Signed In!</h2>
                        <p className="Main-Text">Students, welcome to the Caloocan High School Examination Website!</p>
                    </div>
                </div> */}
            </div>
        </Fade>
    )
}