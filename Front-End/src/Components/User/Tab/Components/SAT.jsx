
import "../../../../css/User/Tabs/Components/SAT.css"
import data from '../../../../assets/Data/sat_questions.js'
import { Radio, Button } from '@mui/material';
import * as React from 'react';
import RadioGroup from '@mui/material/RadioGroup';
import FormControlLabel from '@mui/material/FormControlLabel';
import { Link } from "react-router-dom";
import axios from "axios";
import { useNavigate } from "react-router-dom";

const Radiogroup = {
    '& .MuiSvgIcon-root': {
        fontSize: 20,
    },
}

const radio = {
    '&:hover': {
        backgroundColor: '#458d6b17'
    },
    borderRadius: '5px',
    transition: '0.3s',
    padding: '8px 0px',
}

export default function SAT() {

    const navigate = useNavigate()

    const [questions, setquestions] = React.useState([])
    const [subject, setsubject] = React.useState({
        sub: 'eq_math',
        id: 'EQMID'
    })

    const [mathanswer, setmathanswer] = React.useState([])
    const [scienceanswer, setscienceanswer] = React.useState([])
    const [englishanswer, setenglishanswer] = React.useState([])
    const [rcanswer, setrcanswer] = React.useState([])

    const [dataform, setdataform] = React.useState({})
    const [result, setresult] = React.useState({
        MATH: 0,
        SCIENCE: 0,
        ENGLISH: 0,
        READING_COMPREHENSION: 0,
    })

    const sub = (event) => {
        const { value } = event.target

        const s = (
            value === 'eq_reading_comprehension' ? 'RC' : value[3].toUpperCase()
        )

        setsubject(() => ({
            sub: value,
            id: `EQ${s}ID`
        }))
    }

    React.useEffect(() => {
        axios.get(`http://localhost/recommendation_system/api/user/Exam_Questions.php?SUB=${subject.sub}`).then(function (response) {
            setquestions(response.data)
        })

    }, [subject])

    let setsub = (setmathanswer)
    let eachsub = mathanswer
    let reachsub = ""

    if (subject.sub === "eq_math") {
        setsub = (setmathanswer)
        eachsub = mathanswer
        reachsub = "MATH"
    } else if (subject.sub === "eq_science") {
        setsub = (setscienceanswer)
        eachsub = scienceanswer
        reachsub = "SCIENCE"
    } else if (subject.sub === "eq_english") {
        setsub = (setenglishanswer)
        eachsub = englishanswer
        reachsub = "ENGLISH"
    } else {
        setsub = (setrcanswer)
        eachsub = rcanswer
        reachsub = "READING_COMPREHENSION"
    }
    const handleClick = (i, ans) => (event) => {
        const { value, name } = event.target

        let a = 0;
        eachsub.map(prev => {
            if (prev.id === name) {
                return a = a + 1
            } else if (prev.id !== name) {
                return a = a + 0
            }
        })

        if (a === 1) {
            setsub(current =>
                current.map(obj => {
                    if (obj.id === name) {
                        return { ...obj, index: i, id: name, value: value, answer: ans };
                    }

                    return obj;
                }),
            );
        } else {
            setsub(obj2 => ([...obj2, { index: i, id: name, value: value, answer: ans }]))
        }

        setdataform((prev) => ({
            ...prev,
            [reachsub]: eachsub
        }))

        let m = 0, e = 0, s = 0, r = 0
        mathanswer.map(prev => {
            if (prev.value === prev.answer) {
                m = m + 1
            } else {
                m = m + 0
            }
        })

        scienceanswer.map(prev => {
            if (prev.value === prev.answer) {
                s = s + 1
            }
        })

        englishanswer.map(prev => {
            if (prev.value === prev.answer) {
                e = e + 1
            }
        })

        rcanswer.map(prev => {
            if (prev.value === prev.answer) {
                r = r + 1
            }
        })

        setresult(prev => ({
            MATH: m,
            SCIENCE: s,
            ENGLISH: e,
            READING_COMPREHENSION: r,
        }))

    }

    // React.useEffect(() => {
    //     window.localStorage.setItem('EXAM_RESULT', JSON.stringify(result))
    // }, [eachsub])

    const onSubmit = () => {
        // let m = 0, e = 0, s = 0, r = 0
        // mathanswer.map(prev => {
        //     if (prev.value === prev.answer) {
        //         m = m + 1
        //     } else {
        //         m = m + 0
        //     }
        // })

        // scienceanswer.map(prev => {
        //     if (prev.value === prev.answer) {
        //         s = s + 1
        //     }
        // })

        // englishanswer.map(prev => {
        //     if (prev.value === prev.answer) {
        //         e = e + 1
        //     }
        // })

        // rcanswer.map(prev => {
        //     if (prev.value === prev.answer) {
        //         r = r + 1
        //     }
        // })

        // setresult(prev => ({
        //     MATH: m,
        //     SCIENCE: s,
        //     ENGLISH: e,
        //     READING_COMPREHENSION: r,
        // }))

        if(result){
            navigate("../Interest_Assessment", { state: { data: { result } } })
        }

        window.localStorage.setItem('EXAM_RESULT', JSON.stringify(result))
    }
    console.log(result)

    return (
        <div className="SAT">
            <div className="SAT_container">
                <div className="SAT_header">
                    <p className="SAT_p1">Scholastic Aptitude Test</p>
                    <p className="SAT_p2">Part I - Mathematics</p>
                    <p className="SAT_p3"><b>Directions: </b>Choose the correct answer by solving each problem and
                        selecting only the best answer from the options provided below.</p>
                    <div className="SAT_Questions_container">
                        {
                            questions.map((data, index) => {
                                return (
                                    <div className="SAT_Questions" key={index} >
                                        <div className="tile">
                                            Question No. {index + 1}
                                        </div>
                                        <div className="SAT_form">
                                            <p className="SAT_q1">{data.Question}</p>
                                            <RadioGroup
                                                // defaultValue={setvalue(data)}
                                                name="radio-buttons-group"
                                                sx={Radiogroup}
                                            >
                                                <FormControlLabel
                                                    sx={radio}
                                                    control={
                                                        <Radio
                                                            name={data[subject.id]}
                                                            onClick={handleClick(index + 1, data.Answer)}
                                                            value={data.Choice_A}
                                                        />
                                                    }
                                                    label={<div className="SAT_c1" ><b>A.</b><p>{data.Choice_A}</p></div>}
                                                />
                                                <FormControlLabel
                                                    sx={radio}
                                                    control={
                                                        <Radio
                                                            name={data[subject.id]}
                                                            onClick={handleClick(index + 1, data.Answer)}
                                                            value={data.Choice_B}
                                                        />
                                                    }
                                                    label={<div className="SAT_c1" ><b>B.</b> <p>{data.Choice_B}</p></div>}
                                                />
                                                <FormControlLabel
                                                    sx={radio}
                                                    control={
                                                        <Radio
                                                            name={data[subject.id]}
                                                            onClick={handleClick(index + 1, data.Answer)}
                                                            value={data.Choice_C}
                                                        />
                                                    }
                                                    label={<div className="SAT_c1" ><b>C.</b> <p>{data.Choice_C}</p></div>}
                                                />
                                                <FormControlLabel
                                                    sx={radio}
                                                    control={
                                                        <Radio
                                                            name={data[subject.id]}
                                                            onClick={handleClick(index + 1, data.Answer)}
                                                            value={data.Choice_D}
                                                        />
                                                    }
                                                    label={<div className="SAT_c1" ><b>D.</b> <p>{data.Choice_D}</p></div>}
                                                />
                                            </RadioGroup>
                                        </div>
                                    </div>
                                )
                            })
                        }
                    </div>
                </div>
                <div className="Question_Status">
                    <div className="Status_div0">
                        <p><b>Time Limit:</b> 00:50:00</p>
                        <p><b>Question Status</b></p>
                        <div className="Status_div">
                            {questions.map((val, index) => {
                                return (
                                    <div
                                        className="roundball"
                                        style={{
                                            // backgroundColor: JSON.stringify(obj1)===JSON.stringify(obj2) ?'#45786026' :'none'
                                        }} key={index}>
                                        {index + 1}
                                    </div>
                                )
                            })}
                        </div>
                        <div className="Status_div2">

                        </div>
                        <p><b>Subjects</b></p>
                        <div className="Status_div3">
                            <button className="Status_subjects" value="eq_math" onClick={sub}>Math</button>
                            <button className="Status_subjects" value="eq_science" onClick={sub}>Science</button>
                            <button className="Status_subjects" value="eq_english" onClick={sub}>English</button>
                            <button className="Status_subjects" value="eq_reading_comprehension" onClick={sub}>Reading Comprehension</button>
                        </div>
                        {/* <Link to="../Interest_Assessment" state={{ result: result }}>
                            <Button>Submit</Button>
                        </Link> */}
                        <button onClick={onSubmit} className="sat_submit_btn">Submit</button>
                    </div>
                </div>
            </div>
        </div>
    )
}

     // if (subject.sub === "eq_math") {
        //     s(prev => ([...prev, {
        //         [name]: value,
        //         [i]: i
        //     }
        //     ]))
        // } else if (subject.sub === "eq_science") {
        //     setscienceanswer(prev => ({
        //         ...prev,
        //         [name]: value,
        //         [i]: i
        //     }))
        // } else if (subject.sub === "eq_english") {
        //     setenglishanswer(prev => ({
        //         ...prev,
        //         [name]: value,
        //         [i]: i
        //     }))

        // } else {
        //     setrcanswer(prev => ({
        //         ...prev,
        //         [name]: value,
        //         [i]: i
        //     }))
        // }