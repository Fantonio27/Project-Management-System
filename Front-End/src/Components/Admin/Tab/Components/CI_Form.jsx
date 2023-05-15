import "../../../../css/Admin/Form/CI_Form.css"
import React from "react";
import AddIcon from '@mui/icons-material/Add';
import { IconButton, Button, Fade } from "@mui/material";
import { Link, useNavigate } from "react-router-dom";
import axios from "axios";
import Dialog from '@mui/material/Dialog';
import DialogActions from '@mui/material/DialogActions';
import DialogContent from '@mui/material/DialogContent';
import DialogContentText from '@mui/material/DialogContentText';
import DialogTitle from '@mui/material/DialogTitle';
import { FormControl, Select, MenuItem } from "@mui/material";


const combo_sx = {
    border: "0px solid #dee2e6",
    fontFamily: '"Poppins", sans-serif',
    fontSize: '13px',
    color: '#697280ff',
    boxShadow: 'rgba(0, 0, 0, 0.01) 0px 4px 12px',
    padding: '3px 0px'
}
export default function CI_Form() {

    const nav = useNavigate()
    const [Dataform, setDataform] = React.useState({
        FIELD: '',
        INTEREST: '',
    })
    const [Coursejob, setCoursejob] = React.useState([])
    const [CoursePercentage, setCoursePercentage] = React.useState({})
    const [open, setOpen] = React.useState(false);
    const [count, setcount] = React.useState({
        course: 0,
        job: 0
    });
    const url = location.href.split('/').at(-1);

    let add = url === "Add"

    React.useEffect(() => {

        if (add) {
            axios.get(`http://localhost/recommendation_system/api/admin/Count.php?table=course_information`).then(function (response) {
                setcount(prev => ({
                    ...prev,
                    course: response.data
                }))
                // console.log(response.data)
                setDataform(prev => ({
                    ...prev,
                    CID: `CID_${response.data + 1}`
                }))
            })

            axios.get(`http://localhost/recommendation_system/api/admin/Count.php?table=course_information_job`).then(function (response) {
                setcount(prev => ({
                    ...prev,
                    job: response.data
                }))

                setCoursejob(prev => ([
                    { CIJID: `CIJID_${response.data + 1}`, JOB_NAME: '', INFORMATION: '', CID: '' },
                    { CIJID: `CIJID_${response.data + 2}`, JOB_NAME: '', INFORMATION: '', CID: '' },
                    { CIJID: `CIJID_${response.data + 3}`, JOB_NAME: '', INFORMATION: '', CID: '' },
                ]))
            })

            axios.get(`http://localhost/recommendation_system/api/admin/Count.php?table=course_percentage`).then(function (response) {
                setcount(prev => ({
                    ...prev,
                    percentage: response.data
                }))
                // console.log(response.data)
                setCoursePercentage(prev => ({
                    ...prev,
                    CPID: `CPID_${response.data + 1}`
                }))
            })
        } else {
            axios.get(`http://localhost/recommendation_system/api/admin/Course_Information.php?cid=${url}`).then(function (response) {
                setDataform(response.data)
            })

            axios.get(`http://localhost/recommendation_system/api/admin/Course_Job.php?cid="${url}"`).then(function (response) {
                setCoursejob(response.data)
            })

            axios.get(`http://localhost/recommendation_system/api/admin/Course_Percentage.php?cid="${url}"`).then(function (response) {
                setCoursePercentage(response.data)
            })
        }
    }, [])

    const field = [
        { id: "CID", label: "Course Information ID", text: "lorem ipsum", disabled: true },
        { id: "FIELD", label: "Field", text: "Enter the general field or discipline of the course. For example: Engineering, Medicine, Business, Literature, etc." },
        {
            id: "ACRONYM", label: "Acronym", text: "Enter the abbreviated form or acronym of the course name. It is typically formed by taking the initial letters of each word in the course name.",
            max: 40, min: 2, pattern: "[a-zA-Z- ]+", title: "Please enter on alphabets only."
        },
        {
            id: "COURSE_NAME", label: "Course Name", text: "Enter the official name or title of the course. Starts with its field then the course name. Example (Bachelor of Science in Information Technology)",
            max: 90, min: 15, pattern: "Bachelor of?.+", title: 'Must start at "Bachelor of"'
        },
        {
            id: "INFORMATION", label: "Information", text: "Provide additional details or information about the course. This may include course objectives, prerequisite requirements, course content, learning outcomes, and other relevant information that will help students understand the course.",
            max: 250, min: 20
        },
        { id: "HEADER_PICTURE", label: "Header Picture", text: "Upload or select a suitable image or graphic to be used as the header picture. Choose an image that represents the course theme, subject, or concept effectively. Ensure that the image is of high quality and appropriate for the course content." },
        { id: "INTEREST", label: "Interest", text: "Allow users to select an interest field that aligns with the course. Provide a list of interest fields related to the course content, such as Technology, Business, Health Sciences, Arts, etc.", },
        {
            id: "JOB", label: "Job", text: "Enter the job or career opportunities associated with the course. This could include specific roles, professions, or industries where individuals who have completed the course can find employment. Provide relevant information about potential career paths and opportunities that the course can lead to.",
            max: 40, min: 2, pattern: "[a-zA-Z- ]+", title: "Please enter on alphabets only."
        },
        { id: "COURSE_PERCENTAGE", label: "Course Percentage", text: "Assign a percentage to each subject to indicate its relative importance or relevance to the course. Divide a total of 100% among the four subjects based on their significance in relation to the course. Consider factors such as the depth of coverage, core concepts, and skills required for each subject." },
    ]

    const percentage = [
        { id: "MATH", label: "Math Percentage" },
        { id: "SCIENCE", label: "Science Percentage" },
        { id: "ENGLISH", label: "English Percentage" },
        { id: "READING_COMPREHENSION", label: "Reading Comprehension Percentage" },
    ]

    const fieldcourse = [
        { id: "Humanities" },
        { id: "Social Science" },
        { id: "Natural Sciences" },
        { id: "Formal Sciences" },
        { id: "Professions and Applied Sciences" },
        { id: "Health Sciences" },
        { id: "Education" },
        { id: "Engineering" },
        { id: "Media and Communication" },
        { id: "Public Administration" },
        { id: "Transportation" },
        { id: "Nutrition" },
    ]

    const interestcourse = [
        { id: "Health Science" },
        { id: "Human Service" },
        { id: "Law & Public Safety" },
        { id: "Arts & Communications" },
        { id: "Hospitality & Tourism" },
        { id: "Education & Training" },
        { id: "Agriculture" },
        { id: "Information Technology" },
        { id: "Science, Technology & Math" },
        { id: "Marketing & Sales" },
        { id: "Government" },
        { id: "Business & Management" },
        { id: "Finance" },
        { id: "Architecture & Construction" },
        { id: "Manufacturing" },
        { id: "Transportation" },
    ]

    const tab = (val, job, cp) => {
        if (val.id === "INFORMATION") {
            return <textarea
                id="COURSE"
                name={val.id}
                className="CI_Form_input"
                style={{ height: "120px" }}
                placeholder={val.label}
                value={Dataform[`${val.id}`] || ''}
                onChange={onChange}
                maxLength={val.max}
                required
            />
        } else if (val.id === "JOB") {
            return (
                job.map((course, index) => {
                    return (
                        <div key={index} className="Form_Job">
                            <input
                                className="CI_Form_input"
                                placeholder="Job Title"
                                id="JOB_NAME"
                                value={course.JOB_NAME || ""}
                                onChange={onChange}
                                // name={course.CIJID || `CIJID_${count.job + 1}`}
                                name={course.CIJID}
                                minLength={val.min}
                                maxLength={val.max}
                                pattern={val.pattern}
                                title={val.title}
                                required
                            />
                            <textarea
                                id="INFORMATION"
                                name={course.CIJID}
                                className="CI_Form_input"
                                style={{ height: "100px" }}
                                placeholder="Job Description"
                                value={course.INFORMATION || ""}
                                onChange={onChange}
                                minLength={20}
                                maxLength={250}
                                required
                            />
                        </div>
                    )
                })
            )
        } else if (val.id === "COURSE_PERCENTAGE") {
            return (
                percentage.map((sub, index) => {
                    return (
                        <div key={index} className="Form_Job">
                            <input
                                type="number"
                                className="CI_Form_input"
                                placeholder={sub.label}
                                id="CP"
                                value={cp[sub.id] || ""}
                                onChange={onChange}
                                // name={course.CIJID || `CIJID_${count.job + 1}`}
                                name={sub.id}
                                min={0}
                                max={50}
                                pattern={val.pattern}
                                title={val.title}
                                required
                            />
                        </div>
                    )
                })
            )
        } else if (val.id === "FIELD") {
            return <FormControl size="small" sx={{ width: '73%' }}>
                <Select
                    value={Dataform.FIELD || ""}
                    onChange={onChange}
                    displayEmpty
                    // disabled={!edit}
                    sx={combo_sx}
                    name="FIELD"
                    required
                >
                    <MenuItem value="">
                        <p className="CI_Form_p2">None</p>
                    </MenuItem>
                    {
                        fieldcourse.map((course, index) => {
                            return (
                                <MenuItem key={index} value={course.id}><p className="CI_Form_p2">{course.id}</p></MenuItem>
                            )
                        })
                    }
                </Select>
            </FormControl>
        } else if (val.id === "INTEREST") {
            return <FormControl size="small" sx={{ width: '73%' }}>
                <Select
                    value={Dataform.INTEREST || ""}
                    onChange={onChange}
                    displayEmpty
                    // disabled={!edit}
                    sx={combo_sx}
                    name="INTEREST"
                >
                    <MenuItem value="">
                        <p className="CI_Form_p2">None</p>
                    </MenuItem>
                    {
                        interestcourse.map((course, index) => {
                            return (
                                <MenuItem key={index} value={course.id}><p className="CI_Form_p2">{course.id}</p></MenuItem>
                            )
                        })
                    }
                </Select>
            </FormControl>
        } else {
            return <input
                name={val.id}
                type="text"
                className="CI_Form_input"
                placeholder={val.label}
                value={Dataform[`${val.id}`] || ""}
                onChange={onChange}
                id="COURSE"
                minLength={val.min}
                maxLength={val.max}
                pattern={val.pattern}
                title={val.title}
                disabled={val.disabled}
                required
            />
        }
    }

    // console.log(Dataform)

    const onChange = (event) => {
        const { name, value, id } = event.target

        if (id === "COURSE" || name === "FIELD" || name === "INTEREST") {
            setDataform((prev) => ({
                ...prev,
                [name]: value
            }))
        } else if (id === "CP") {
            setCoursePercentage(prev => ({
                ...prev,
                [name]: value
            }))
        }
        else {
            setCoursejob(current =>
                current.map(obj => {
                    if (obj.CIJID === name) {
                        return { ...obj, [id]: value, CID: Dataform.CID };
                    }

                    return obj;
                }))
        }
    }

    const handleSubmit = (event) => {
        event.preventDefault()

        const percentage = {
            MATH: Number(CoursePercentage.MATH),
            SCIENCE: Number(CoursePercentage.SCIENCE),
            ENGLISH: Number(CoursePercentage.ENGLISH),
            READING_COMPREHENSION: Number(CoursePercentage.READING_COMPREHENSION),
        }
        const values = Object.values(percentage);

        const sum = values.reduce((accumulator, value) => {
            return accumulator + value;
        }, 0);
        if (add) {
            // console.log(CoursePercentage)

            if (sum !== 100) {
                alert(`Course Percentage must be 100% (${sum})`)
            } else {
                axios.post(`http://localhost/recommendation_system/api/admin/Course_Information.php`, Dataform).then(function (response) {
                    axios.post(`http://localhost/recommendation_system/api/admin/Course_Percentage.php?cid="${Dataform.CID}"`, CoursePercentage).then(function (response) {
                        Coursejob.map((prev) => {
                            axios.post(`http://localhost/recommendation_system/api/admin/Course_Job.php?cid="${Dataform.CID}"`, prev).then(function (response) {

                            })
                        })
                    })
                })
                nav("../")
            }

        } else {
            if (sum !== 100) {
                alert(`Course Percentage must be 100% (${sum})`)
            } else {
                axios.put(`http://localhost/recommendation_system/api/admin/Course_Information.php`, Dataform).then(function (response) {

                    {
                        Coursejob.map((prev) => {
                            axios.put(`http://localhost/recommendation_system/api/admin/Course_Job.php?cid="${Dataform.CID}"`, prev).then(function (response) {
                            })
                        })
                    }
                })
                axios.put(`http://localhost/recommendation_system/api/admin/Course_Percentage.php`, CoursePercentage).then(function (response) {
                })
                nav("../")
            }
        }

        setOpen(false)
    }

    return (
        <Fade in={true} timeout={1000}>
            <div className="CI_Form">
                <form onSubmit={(event) => { event.preventDefault(), setOpen(true) }}>
                    <div className="CI_Form_Title">
                        <div>
                            <p>{add ? "Add" : "Edit"} Course Information</p>
                            <p className="CI_Form_subTitle">Update the details and other information of a Course</p>
                        </div>
                        <div style={{ display: 'flex', gap: '10px', alignItems: 'center' }}>

                            <input type="submit" className="button_save" value={add ? "Add" : "Save"} />

                            <button className="cancel_sx" onClick={() => nav('../')}>Cancel</button>
                        </div>
                    </div>
                    {
                        field.map((val, index) => {
                            return (
                                <div className="CI_Form_container" key={index}>
                                    <div>
                                        <p className="CI_Form_p1">{val.label}</p>
                                        <p className="CI_Form_p2">{val.text}</p>
                                    </div>
                                    <div>
                                        {tab(val, Coursejob, CoursePercentage)}
                                    </div>
                                </div>
                            )
                        })
                    }
                </form>
                <Dialog
                    open={open}
                // onClose={()=>setOpen(false)}
                >
                    <DialogTitle id="alert-dialog-title">
                        {add ? "Add a Record" : "Update a Record"}
                    </DialogTitle>
                    <DialogContent>
                        <DialogContentText id="alert-dialog-slide-description" sx={{fontSize: '15px'}}>
                            Are you sure you want to {add ? "Add" : "Update"} this?
                        </DialogContentText>

                    </DialogContent>
                    <DialogActions sx={{ display: 'flex', gap: '5px', padding: '10px 20px' }}>
                        <button className="cancel_sx" style={{ width: '90px', padding: '7px 0px' }} onClick={() => setOpen(false)}>Cancel</button>
                        <button className="button_save" style={{ width: '100px', padding: '7px 0px' }} onClick={handleSubmit}>{add ? "Add" : "Save"}</button>
                    </DialogActions>
                    {/* <DialogActions>
                        <Button onClick={() => setOpen(false)}>Cancel</Button>
                        <Button onClick={handleSubmit} autoFocus>
                            Update
                        </Button>
                    </DialogActions> */}
                </Dialog>
            </div>
        </Fade>
    )
}