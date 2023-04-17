import "../../../../css/User/Tabs/Components/IA.css"
import LinearProgress from '@mui/material/LinearProgress';
import ThumbDownOffAltRoundedIcon from '@mui/icons-material/ThumbDownOffAltRounded';

export default function IA() {
    return (
        <div className="IA">
            <p className="IA_p1">Interest Assessment </p>
            <p className="IA_p2">Directions: For the following exam please answer the exam as honestly as you can be because this will
                be the bearing of the recommended results that you would get.</p>
            <div style={{ width: '100%' }}>
                <LinearProgress color="success" value={0} variant="determinate"
                    sx={{
                        height: '10px',
                        borderTopLeftRadius: '10px',
                        borderTopRightRadius: '10px'
                    }} />
            </div>
            <div className="IA_questions">
                <div className="IA_div0">
                    <p className="IA_q_p1">Question 1 of 10</p>
                    <p className="IA_q_p2">I like to do puzzles.</p>
                </div>
                <div className="IA_div">
                    <button className="IA_button1">
                        <ThumbDownOffAltRoundedIcon
                            sx={{
                                transform: 'rotate(180deg)',
                                fontSize: '40px'
                            }} />
                        <p>YES</p>
                    </button>
                    <button className="IA_button2">
                        <ThumbDownOffAltRoundedIcon
                            sx={{
                                fontSize: '40px'
                            }} />
                        <p>NO</p>
                    </button>
                </div>
            </div>
        </div>
    )
}