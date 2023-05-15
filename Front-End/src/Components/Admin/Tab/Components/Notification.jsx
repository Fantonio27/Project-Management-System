import React from "react"
import axios from "axios"
import "../../../../css/Admin/Form/Notification.css"
import { Link } from "react-router-dom"
import InfoRoundedIcon from '@mui/icons-material/InfoRounded';
import { Fade } from "@mui/material";

export default function Notification() {
    const [Dataform, setDataform] = React.useState([])

    React.useEffect(() => {
        axios.get(`http://localhost/recommendation_system/api/admin/notification.php`).then(function (response) {
            setDataform(response.data)
            // console.log(response.data)
        })
    }, [])

    const icon = {
        color: '#69b96eff',
        fontSize: '35px'
    }
    return (
        <Fade in={true} timeout={1000}>
            <div>
                <p className="titlepertable">Notification</p>
                <div className="tab_notification">
                    {
                        Dataform.map((val, index) => {
                            return (
                                // <Link to="../Student_Results/Entrance_Exam_Results" style={{ textDecoration: 'none' }}>
                                <div className="notif_box" key={index}>
                                    <div className="top_notif"></div>
                                    <div className="notif_container">
                                        <InfoRoundedIcon sx={icon}></InfoRoundedIcon>
                                        <div>
                                            <p>LRN: {val.LRN}</p>
                                            <p><b>{val.STUDENT_FIRSTNAME} {val.STUDENT_LASTNAME}</b> has already taken the examination.</p>
                                        </div>
                                    </div>
                                </div>
                                // </Link>
                            )
                        })
                    }
                </div>
            </div>
        </Fade>
    )
}