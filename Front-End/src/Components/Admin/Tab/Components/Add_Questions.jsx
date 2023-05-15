import "../../../../css/Admin/Form/Entrance_Exam.css"
import ArrowForwardIosRoundedIcon from '@mui/icons-material/ArrowForwardIosRounded';
import React from "react";
import { Button, Fade } from "@mui/material"
import axios from "axios";
import { useNavigate } from "react-router-dom";
import Checkbox from '@mui/material/Checkbox';

const nextbutton_sx = {
    padding: '5px 30px',
    border: '1px solid #F8F9FA',
    color: 'white',
    textTransform: 'none',
    fontFamily: 'Poppins',
    letterSpacing: '1px',
    boxShadow: 'rgba(0, 0, 0, 0.08) 0px 4px 12px',
    transition: '0.5s',
    backgroundColor: '#69b96eff',
    '&:hover': {
        backgroundColor: 'rgb(92, 166, 97)'
    }
}

export default function Edit_Questions() {
    const url = location.href.split('/').at(-1);
    const nav = useNavigate()
    const [questioninfo, setquestioninfo] = React.useState({})
    const sub = location.href.split('/').at(-2);
    const subject = `eq_${sub.toLowerCase()}`
    const [answer, setanswer] = React.useState('ans')
    const [count, setcount] = React.useState()

    const [validationcount, setvalidationcount] = React.useState(0)

    React.useEffect(() => {
        axios.get(`http://localhost/recommendation_system/api/admin/Count.php?table=${subject}`).then(function (response) {
            setcount(response.data)
        })
    }, [])

    const onChangehandle = (event) => {
        const { name, value, id, checked } = event.target

        if (!value.startsWith(" ") && !value.includes('  ')) {
            if (name !== "Answer") {
                setanswer("")
                setquestioninfo(prev => ({
                    ...prev,
                    Answer: ""
                }))
            }
            setquestioninfo(prev => ({
                ...prev,
                [name]: value
            }))

            if (name === "Answer") {
                setanswer(value)
            } else if (name == "Question") {
                setvalidationcount(value.length)
            }
        }

        // if (!value.startsWith(" ") && !value.includes('  ')) {
        //     setquestioninfo(prev => ({
        //         ...prev,
        //         [name]: value
        //     }))

        //     if (name === "Answer") {
        //         setanswer(value)
        //     } else if (name == "Question") {
        //         setvalidationcount(value.length)
        //     }
        // }
    }

    const onSubmit = () => {
        const id = sub === "Reading_Comprehension" ? `EQRCID` : `EQ${sub[0]}ID_${count + 1}`
        const val = Object.keys(questioninfo).length
        const val2 = Object.values(questioninfo).every(value => {
            if (value !== "") {
                return true
            }
        })

        const unique = choice.filter(
            (obj, index) =>
                choice.findIndex(
                    (item) => item.value === obj.value
                ) === index
        )

        if (val === 6 && val2) {
            if (unique.length !== choice.length) {
                alert("Duplicate Choices!")
            }
            else {
                axios.post(`http://localhost/recommendation_system/api/admin/SAT_Questions.php?ID="${id}"&&SUB=${subject}`, questioninfo).then(function (response) {
                    if (response.data) {
                        alert("Record Added successfully")
                        nav("..")
                    }
                })
            }
        } else {
            alert("Please fill in all the fields")
        }
    }

    const choice = [
        { id: 'Choice_A', label: 'Choice A', value: questioninfo.Choice_A },
        { id: 'Choice_B', label: 'Choice B', value: questioninfo.Choice_B },
        { id: 'Choice_C', label: 'Choice C', value: questioninfo.Choice_C },
        { id: 'Choice_D', label: 'Choice D', value: questioninfo.Choice_D },
    ]

    return (
        <Fade in={true} timeout={1000}>
            <div className="Add_Entrance_Exam">
                <div className="A_EE_BreadCrumbs">
                    <p style={{ color: 'rgba(37, 42, 53, 0.6)' }}>Questions</p>
                    <ArrowForwardIosRoundedIcon sx={{ fontSize: '14px' }} />
                    <p style={{ fontWeight: '700' }}>{sub}</p>
                </div>
                <div className="A_EE_tab1">
                    <div style={{ width: '100%' }}>
                        <p className="tab_p1">{sub} Question</p>
                        <p className="tab_p2">Update the questions, and choices</p>

                        <div className="tab3_form">
                            <div>
                                <p className="Tab_title">Question</p>
                                <textarea
                                    id="text"
                                    name="Question"
                                    className="tab_input"
                                    style={{ height: "100px", }}
                                    placeholder={`${sub} Question`}
                                    value={questioninfo.Question || ""}
                                    onChange={onChangehandle}
                                    // minLength={7}
                                    maxLength={250}
                                    required
                                />
                                <div className="validation_div">
                                    {/* <p className="validation_p" style={{opacity: validation.Question === ' '?0:1}}>{validation.Question}</p> */}
                                    <p>{validationcount}/250</p>
                                </div>
                            </div>
                            <div className="choices">
                                {
                                    choice.map((val, index) => {
                                        return (
                                            <div key={index}>
                                                <p className="Tab_title"><Checkbox checked={questioninfo[val.id] === answer} name="Answer" value={questioninfo[val.id]} size="small" sx={{ padding: "0px" }} color="success" onClick={onChangehandle} />{val.label}</p>
                                                <input type="text" name={val.id} className="tab_input" value={questioninfo[val.id] || ""} onChange={onChangehandle} maxLength={80} />
                                                {/* <p className="validation_p" style={{opacity: validation[val.id] === ''? 0:1}}>{validation[val.id]}</p> */}
                                            </div>
                                        )
                                    })
                                }
                            </div>
                        </div>

                        <button className="button_save" onClick={onSubmit}>Add Question</button>
                    </div>


                </div>
            </div>
        </Fade>
    )
}