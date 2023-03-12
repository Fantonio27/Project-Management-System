import "../../css/User_Profile.css"
import AccountCircleIcon from '@mui/icons-material/AccountCircle';
import { Divider } from "@mui/material";

export default function Profile() {

    const icon = {
        height: "145px",
        width: "145px",
        color: "#008000"
    }

    
    return (
        <div className="Profile">
            <div className="Profile-container">
                <AccountCircleIcon sx={icon} />
                <h1>LastName, Firstname middlename</h1>
                <p>Student</p>
                <div className="Profile-Information">
                    <h1 className="Profile-Title">Student Information</h1>
                    <Divider className="Profile-Divider"/>
                    <p>Student Number: 01234567890</p>
                    <p>PASSWORD: ****</p>
                    <p>ADDRESS: 123 EX-STREET, EX-BARANGGAY, EX-CITY</p>
                    <p>SHS TRACK: EX-SHS-COURSE</p>
                </div>
            </div>
        </div>
    )
}