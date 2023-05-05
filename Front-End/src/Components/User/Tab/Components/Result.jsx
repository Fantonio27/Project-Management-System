import "../../../../css/User/Tabs/Components/Result.css"
import { Avatar, Badge, Box, LinearProgress, Zoom, FormControl, Select, MenuItem } from "@mui/material";
import EditIcon from '@mui/icons-material/Edit';
import CameraIcon from '@mui/icons-material/CameraAltRounded';
import Button from '@mui/material/Button';
import React, { useState, useEffect } from "react";
import CircularProgress from '@mui/material/CircularProgress';
import { Link, useLocation } from "react-router-dom";
import axios from "axios";
import styled from "@emotion/styled";
export default function Profile() {

    const user = window.localStorage.getItem('USER_DATA')
    const [satresult, setsatresult] = React.useState([])
    const [overall, setoverall] = React.useState([])
    const [iaresult, setiaresult] = React.useState([])
    const [subscore, setsubscore] = React.useState([])

    const sat = satresult.length === 0
    const ia = iaresult.length === 0
    const subject = [
        {
            Subject: "Math",
            Score: "30",
            Item: "",
            bg: "#0096c7",
            result: sat ? 0 : satresult[0].MATH_SCORE
        },
        {
            Subject: "Science",
            Score: "30",
            Item: "",
            bg: "#52b788",
            result: sat ? 0 : satresult[0].SCIENCE_SCORE
        },
        {
            Subject: "English",
            Score: "20",
            Item: "",
            bg: "#f13030",
            result: sat ? 0 : satresult[0].ENGLISH_SCORE
        },
        {
            Subject: "History",
            Score: "20",
            Item: "",
            bg: "#f4a261",
            result: sat ? 0 : satresult[0].READING_COMPREHENSION_SCORE
        },
    ]

    const interest = [
        {
            Interest: "Realistic",
            Score: 0,
            Item: "",
            Color: "#ff4d6d",
            Bg: "#ff4d6d4b",
            result: ia ? 0 : iaresult[0].REALISTIC_SCORE
        },
        {
            Interest: "Investigative",
            Score: 10,
            Item: "",
            Color: "#fb8500",
            Bg: "#fb85004b",
            result: ia ? 0 : iaresult[0].INVESTIGATIVE_SCORE
        },
        {
            Interest: "Artistic",
            Score: 20,
            Item: "",
            Color: "#ffc300",
            Bg: "#ffc3004b",
            result: ia ? 0 : iaresult[0].ARTISTIC_SCORE
        },
        {
            Interest: "Social",
            Score: 30,
            Item: "",
            Color: "#52b788",
            Bg: "#52b7884d",
            result: ia ? 0 : iaresult[0].SOCIAL_SCORE
        },
        {
            Interest: "Enterprising",
            Score: 40,
            Item: "",
            Color: "#00b4d8",
            Bg: "#00b4d84d",
            result: ia ? 0 : iaresult[0].ENTERPRISING_SCORE
        },
        {
            Interest: "Conventional",
            Score: 50,
            Item: "",
            Color: "#858ae3",
            Bg: "858ae34d",
            result: ia ? 0 : iaresult[0].CONVENTIONAL_SCORE
        },
    ]

    useEffect(() => {
        axios.get(`http://localhost/recommendation_system/api/user/Result.php?LRN="${JSON.parse(user).LRN}"&&FETCH='EX'`).then(function (response) {
            setsatresult(response.data)
            // console.log(response.data)
            const subject = {
                Math: response.data[0].MATH_SCORE,
                Science: response.data[0].SCIENCE_SCORE,
                English: response.data[0].ENGLISH_SCORE,
                Reading_Comprehension: response.data[0].READING_COMPREHENSION_SCORE,
            }
            const high = Object.keys(subject).reduce((a, b) => subject[a] > subject[b] ? a : b)

            // setsubscore(high)

            axios.get(`http://localhost/recommendation_system/api/user/Result.php?LRN="${JSON.parse(user).LRN}"&&FETCH='IA'`).then(function (response) {
                setiaresult(response.data)
                // console.log(high)
                axios.get(`http://localhost/recommendation_system/api/user/Result.php?IA='${response.data[0].IA_RESULT}'&&FETCH='reco'&&SUBJECT=${high}`).then(function (response) {
                    setsubscore(response.data)
                    console.log(response.data)
                })
            })
        })

    }, [])
    let i = 0
    function recommend(a) {
        // return (<p>Hello</p>)
        // const high = subscore.length ===0? "" :Object.keys(subscore).reduce((a, b) => subscore[a] > subscore[b] ? a : b)
        // console.log(high)
        // console.log(subscore)

        if (a === "I AND S" || a === "S AND I") {
            return (
                <div>
                    <p className="ul">Health Science</p>
                    <ul>
                        {
                            subscore.map((prev, index) => {
                                if (prev.INTEREST === "Health Science") {
                                    return (
                                        <Link   key={index} to={`../Course_Directory/${prev.COURSE_NAME}`}>
                                            <li className="li">{prev.COURSE_NAME}</li>
                                        </Link>
                                    )
                                }
                            })

                        }
                    </ul>
                    <p className="ul">Education & Training</p>
                    <ul>
                        {
                            subscore.map((prev, index) => {
                                if (prev.INTEREST === "Education & Training") {
                                    return (
                                        <li key={index} className="li">{prev.COURSE_NAME}</li>
                                    )
                                }
                            })
                        }
                    </ul>
                </div>
            )
        }
        else if (a === "R AND S" || a === "S AND R") {
            return (
                <div>
                    <p className="ul">Health Science</p>
                    <ul>
                        {
                            subscore.map((prev, index) => {
                                if (prev.INTEREST === "Health Science") {
                                    return (
                                        <li key={index} className="li">{prev.COURSE_NAME}</li>
                                    )
                                }
                            })

                        }
                    </ul>
                    <p className="ul">Human Service</p>
                    <ul>
                        {
                            subscore.map((prev, index) => {
                                if (prev.INTEREST === "Human Service") {
                                    return (
                                        <li key={index} className="li">{prev.COURSE_NAME}</li>
                                    )
                                }
                            })
                        }
                    </ul>
                    <p className="ul">Law & Public Safety</p>
                    <ul>
                        {
                            subscore.map((prev, index) => {
                                if (prev.INTEREST === "Law & Public Safety") {
                                    return (
                                        <li key={index} className="li">{prev.COURSE_NAME}</li>
                                    )
                                }
                            })
                        }
                    </ul>
                </div>
            )
        }
        else if (a === "R AND E" || a === "E AND R") {
            return (
                <div>
                    <p className="ul">Arts & Communications</p>
                    <ul>
                        {
                            subscore.map((prev, index) => {
                                if (prev.INTEREST === "Arts & Communications") {
                                    return (
                                        <li key={index} className="li">{prev.COURSE_NAME}</li>
                                    )
                                }
                            })

                        }
                    </ul>
                    <p className="ul">Hospitality & Tourism</p>
                    <ul>
                        {
                            subscore.map((prev, index) => {
                                if (prev.INTEREST === "Hospitality & Tourism") {
                                    return (
                                        <li key={index} className="li">{prev.COURSE_NAME}</li>
                                    )
                                }
                            })
                        }
                    </ul>
                </div>
            )
        }
        else if (a === "I AND R" || a === "R AND I") {
            return (
                <div>
                    <p className="ul">Agriculture</p>
                    <ul>
                        {
                            subscore.map((prev, index) => {
                                if (prev.INTEREST === "Agriculture") {
                                    return (
                                        <Link key={index} to={`../../Course_Directory/${prev.CID}`} className="Link">
                                            <li className="li">{prev.COURSE_NAME}</li>
                                        </Link>
                                    )
                                }
                            })

                        }
                    </ul>
                    <p className="ul">Health Science</p>
                    <ul>
                        {
                            subscore.map((prev, index) => {
                                if (prev.INTEREST === "Health Science") {
                                    return (
                                        <li key={index} className="li">{prev.COURSE_NAME}</li>
                                    )
                                }
                            })
                        }
                    </ul>
                    <p className="ul">Information Technology</p>
                    <ul>
                        {
                            subscore.map((prev, index) => {
                                if (prev.INTEREST === "Information Technology") {
                                    return (
                                        <li key={index} className="li">{prev.COURSE_NAME}</li>
                                    )
                                }
                            })
                        }
                    </ul>
                    <p className="ul">Science, Technology & Math</p>
                    <ul>
                        {
                            subscore.map((prev, index) => {
                                if (prev.INTEREST === "Science, Technology & Math") {
                                    return (
                                        <li key={index} className="li">{prev.COURSE_NAME}</li>
                                    )
                                }
                            })
                        }
                    </ul>
                </div>
            )
        }
        else if (a === "A AND S" || a === "S AND A") {
            return (
                <div>
                    <p className="ul">Education & Training</p>
                    <ul>
                        {
                            subscore.map((prev, index) => {
                                if (prev.INTEREST === "Education & Training") {
                                    return (
                                        <li key={index} className="li">{prev.COURSE_NAME}</li>
                                    )
                                }
                            })

                        }
                    </ul>
                    <p className="ul">Arts & Communications</p>
                    <ul>
                        {
                            subscore.map((prev, index) => {
                                if (prev.INTEREST === "Arts & Communications") {
                                    return (
                                        <li key={index} className="li">{prev.COURSE_NAME}</li>
                                    )
                                }
                            })
                        }
                    </ul>
                    <p className="ul">Marketing & Sales</p>
                    <ul>
                        {
                            subscore.map((prev, index) => {
                                if (prev.INTEREST === "Marketing & Sales") {
                                    return (
                                        <li key={index} className="li">{prev.COURSE_NAME}</li>
                                    )
                                }
                            })
                        }
                    </ul>
                </div>
            )
        }
        else if (a === "A AND R" || a === "R AND A") {
            return (
                <div>
                    <p className="ul">Arts & Communications</p>
                    <ul>
                        {
                            subscore.map((prev, index) => {
                                if (prev.INTEREST === "Arts & Communications") {
                                    return (
                                        <li key={index} className="li">{prev.COURSE_NAME}</li>
                                    )
                                }
                            })

                        }
                    </ul>
                    <p className="ul">Education & Training</p>
                    <ul>
                        {
                            subscore.map((prev, index) => {
                                if (prev.INTEREST === "Education & Training") {
                                    return (
                                        <li key={index} className="li">{prev.COURSE_NAME}</li>
                                    )
                                }
                            })
                        }
                    </ul>
                </div>
            )
        }
        else if (a === "S AND E" || a === "E AND S") {
            return (
                <div>
                    <p className="ul">Government</p>
                    <ul>
                        {
                            subscore.map((prev, index) => {
                                if (prev.INTEREST === "Government") {
                                    return (
                                        <li key={index} className="li">{prev.COURSE_NAME}</li>
                                    )
                                }
                            })

                        }
                    </ul>
                    <p className="ul">Law & Public Safety</p>
                    <ul>
                        {
                            subscore.map((prev, index) => {
                                if (prev.INTEREST === "Law & Public Safety") {
                                    return (
                                        <li key={index} className="li">{prev.COURSE_NAME}</li>
                                    )
                                }
                            })
                        }
                    </ul>
                    <p className="ul">Marketing & Sales</p>
                    <ul>
                        {
                            subscore.map((prev, index) => {
                                if (prev.INTEREST === "Marketing & Sales") {
                                    return (
                                        <li key={index} className="li">{prev.COURSE_NAME}</li>
                                    )
                                }
                            })
                        }
                    </ul>
                </div>
            )
        }
        else if (a === "E AND C" || a === "C AND E") {
            return (
                <div>
                    <p className="ul">Business & Management</p>
                    <ul>
                        {
                            subscore.map((prev, index) => {
                                if (prev.INTEREST === "Business & Management") {
                                    return (
                                        <li key={index} className="li">{prev.COURSE_NAME}</li>
                                    )
                                }
                            })

                        }
                    </ul>
                    <p className="ul">Finance</p>
                    <ul>
                        {
                            subscore.map((prev, index) => {
                                if (prev.INTEREST === "Finance") {
                                    return (
                                        <li key={index} className="li">{prev.COURSE_NAME}</li>
                                    )
                                }
                            })
                        }
                    </ul>
                </div>
            )
        }
        else if (a === "E AND A" || a === "A AND E") {
            return (
                <div>
                    <p className="ul">Arts & Communications</p>
                    <ul>
                        {
                            subscore.map((prev, index) => {
                                if (prev.INTEREST === "Arts & Communications") {
                                    return (
                                        <li key={index} className="li">{prev.COURSE_NAME}</li>
                                    )
                                }
                            })

                        }
                    </ul>
                    <p className="ul">Marketing & Sales</p>
                    <ul>
                        {
                            subscore.map((prev, index) => {
                                if (prev.INTEREST === "Marketing & Sales") {
                                    return (
                                        <li key={index} className="li">{prev.COURSE_NAME}</li>
                                    )
                                }
                            })
                        }
                    </ul>
                </div>
            )
        }
        else if (a === "C AND R" || a === "R AND C") {
            return (
                <div>
                    <p className="ul">Architecture & Construction</p>
                    <ul>
                        {
                            subscore.map((prev, index) => {
                                if (prev.INTEREST === "Architecture & Construction") {
                                    return (
                                        <li key={index} className="li">{prev.COURSE_NAME}</li>
                                    )
                                }
                            })

                        }
                    </ul>
                    <p className="ul">Manufacturing</p>
                    <ul>
                        {
                            subscore.map((prev, index) => {
                                if (prev.INTEREST === "Manufacturing") {
                                    return (
                                        <li key={index} className="li">{prev.COURSE_NAME}</li>
                                    )
                                }
                            })
                        }
                    </ul>
                    <p className="ul">Transportation</p>
                    <ul>
                        {
                            subscore.map((prev, index) => {
                                if (prev.INTEREST === "Transportation") {
                                    return (
                                        <li key={index} className="li">{prev.COURSE_NAME}</li>
                                    )
                                }
                            })
                        }
                    </ul>
                </div>
            )
        }
    }

    return (
        <Zoom in={true} timeout={500}>
            <div className="Profile">
                <div className="Profile-box">
                    <p className="Result_p1">OverAll Results</p>
                    <div>
                        <p className="Result_p2">SAT total Score: </p>
                        <p className="Result_p3">{satresult.length === 0 ? "" : satresult[0].TOTAL_SCORE}</p>
                    </div>

                    <div>
                        <p className="Result_p2">Interest Assement Result: </p>
                        <p className="Result_p3">{iaresult.length === 0 ? "" : iaresult[0].IA_RESULT}</p>
                    </div>

                    <div>
                        <p className="Result_p2">Exam Result: </p>
                        <p className="Result_p3">{satresult.length === 0 ? "" : satresult[0].EXAM_RESULT}</p>
                    </div>

                    <div>
                        <p className="Result_p2">Recommeded Course: </p>
                        <div>{recommend(iaresult.length === 0 ? "" : iaresult[0].IA_RESULT)}</div>
                    </div>

                </div>
                <div className="Profile-result-exam">
                    <div style={{ padding: "50px" }}>
                        <h1 className="result-title">Scholastic Assessment Test</h1>
                        <p className="result-p">Result:</p>
                        <div className="Profile-subjects">
                            {
                                subject.map((sub) => (
                                    <div key={sub.Subject} className={`sub ${sub.Subject}`}>
                                        <h1>{sub.Subject}</h1>

                                        <Box sx={{ position: 'relative' }}>
                                            <CircularProgress
                                                variant="determinate"
                                                sx={{
                                                    color: "#e9ecef",
                                                }}
                                                size={90}
                                                thickness={3}
                                                value={100}
                                            />
                                            <CircularProgress
                                                variant="determinate"

                                                sx={{
                                                    color: `${sub.bg}`,
                                                    position: "absolute",
                                                    left: 0
                                                }}
                                                size={90}
                                                thickness={3}
                                                value={sub.result / sub.Score * 100}
                                            />
                                        </Box>
                                        <div className="sub_score_box">
                                            <p className="sub_score">{sub.result}</p>
                                            <p className="sub_score_txt">Score</p>
                                        </div>
                                    </div>
                                ))
                            }
                        </div>
                    </div>
                </div>
                <div className="Profile-result-ia">
                    <div style={{ padding: "50px" }}>
                        <h1 className="result-title">Interest Assessment</h1>
                        <p className="result-p">Result:</p>
                        <div className="Profile-interest">
                            {
                                interest.map((e) => (
                                    <div key={e.Interest} className="interest-div">
                                        <h1>{e.Interest}</h1>
                                        <Box sx={{ width: '100%' }}>
                                            <LinearProgress
                                                sx={{
                                                    backgroundColor: `${e.Bg}`,
                                                    '& .MuiLinearProgress-bar': {
                                                        backgroundColor: `${e.Color}`
                                                    }
                                                }}
                                                variant="determinate"
                                                value={e.result / 7 * 100}
                                            />
                                        </Box>
                                        <p>{e.result}</p>
                                    </div>
                                ))
                            }

                            {/* <div><p>Realistic</p></div>
                            <div><p>Investigative</p></div>
                            <div><p>Artistic</p></div>
                            <div><p>Social</p></div>
                            <div><p>Enterprising</p></div>
                            <div><p>Conventional</p></div> */}
                        </div>
                    </div>
                </div>
            </div>

        </Zoom>
    )
}
