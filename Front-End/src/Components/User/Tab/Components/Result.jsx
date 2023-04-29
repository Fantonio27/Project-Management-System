import "../../../../css/User/Tabs/Components/Result.css"
import { Chart as ChartJS, ArcElement, Tooltip, Legend } from 'chart.js';
import { Doughnut } from 'react-chartjs-2';
import LinearProgress from '@mui/material/LinearProgress';

export const data = {
    labels: ['Math', 'Science', 'English', 'Reading Comprehension', 'Incorrect Answer'],
    datasets: [
        {
            label: '# of Votes',
            data: [12, 19, 3, 5, 2],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
            ],
            borderWidth: 0,
        },
    ],
};

export default function Result() {

    ChartJS.register(ArcElement, Tooltip, Legend);



    const option = {
        animation: {
            duration: 1500,
        },
        cutout: 80,
        // borderWidth: 0,'
        plugins: {
            legend: {
                position: "bottom",
                labels: {
                    padding: 30
                }
            }
        }
    }

    const subject = [
        { subject: 'Math' },
        { subject: 'Science' },
        { subject: 'English' },
        { subject: 'Reading Comprehension' },
    ]

    return (
        <div className="Exam_Result">
            <p className="Exam_Result_p1">Exam Result</p>
            <div className="Exam_Result_div">
                <div className="Exam_Result_div1">
                    <p className="Exam_Result_p2">OverAll Result</p>
                    <div className="Exam_Result_div2">
                        <div>
                            <p className="Exam_Result_p3">SAT Total Score: </p>
                            <p className="Exam_Result_p4">30</p>
                        </div>
                        <div>
                            <p className="Exam_Result_p3">IA Output: </p>
                            <p className="Exam_Result_p4">Interested in Art</p>
                        </div>
                        <div>
                            <p className="Exam_Result_p3">Exam Status: </p>
                            <p className="Exam_Result_p4">Passed</p>
                        </div>
                        <div>
                            <p className="Exam_Result_p3">Course Recommended: </p>
                            <p className="Exam_Result_p4">Bachelor of Science in Information Technology</p>
                        </div>
                    </div>
                    <p className="Exam_Result_p2">Scholastic Aptitude Test Result</p>
                    <div style={{ margin: "20px 0px 30px" }}>
                        <Doughnut data={data} />
                    </div>
                    <div className="Exam_Result_div2" style={{ gap: '25px' }}>

                        {
                            subject.map((val) => {

                                return (
                                    <div>
                                        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', }}>
                                            <p className="Exam_Result_p3">{val.subject}{val.subject === "Reading Comprehension" && <br></br>} Score :</p>
                                            <p className="Exam_Result_p4">30 / 30</p>
                                        </div>
                                        <div style={{ width: '100%', marginTop: '10px' }}>
                                            <LinearProgress variant="determinate" value={10} color="success" sx={{ borderRadius: '20px', height: '5px' }} />
                                        </div>
                                    </div>
                                )
                            })
                        }

                    </div>
                    <p className="Exam_Result_p2">Interest Assessment Result</p>
                    <div className="Exam_Result_div2">
                        <div>
                            <p className="Exam_Result_p3">Department Interest:</p>
                            <p className="Exam_Result_p4">Humanities</p>
                        </div>
                        <div>
                            <p className="Exam_Result_p3">Interest:</p>
                            <p className="Exam_Result_p4">Humanities</p>
                        </div>
                    </div>
                </div>
                <div className="Exam_Result_div3">
                    <p className="Exam_Result_p2">Subjects</p>
                    <div className="Exam_Result_div4">
                        {
                            subject.map((val) => {
                                return (
                                    <div className="Exam_Result_tab" key={val.subject}>
                                        <p>{val.subject}</p>
                                    </div>
                                )
                            })
                        }
                    </div>
                    <p className="Exam_Result_p2">Review</p>
                    <div className="Exam_Review">
                        <div className="Exam_Review_header">
                            <p>Scholastic Aptitude Test - Math</p>
                            <p>Score: 30/20</p>
                            <p>Attempted on Dec 12, 2022</p>
                            <p>Time Taken: 0:20:17</p>
                        </div>
                        <div className="Exam_Review_body">
                            <div className="Exam_Review_question">
                                <p>Question 1</p>
                                <p>blabla</p>
                                <div className="Exam_Review_choice_div">
                                    <div className="Exam_Review__choice">
                                        A. BLbla
                                    </div>
                                    <div className="Exam_Review__choice">
                                        B. BLbla
                                    </div>
                                    <div className="Exam_Review__choice">
                                        C. BLbla
                                    </div>

                                    <div className="Exam_Review__choice">
                                        D. BLbla
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    )
}