import axios from "axios"
import React from "react"
import { FormControl, Select, MenuItem } from "@mui/material";
import { useNavigate } from "react-router-dom";
import "../../../../css/Admin/Form/Interest_Question.css"
import { Fade } from "@mui/material";


const combo_sx = {
    border: "0px solid #dee2e6",
    fontFamily: '"Poppins", sans-serif',
    fontSize: '13px',
    color: '#697280ff',
    boxShadow: 'rgba(0, 0, 0, 0.01) 0px 4px 12px',
    padding: '3px 0px'
}

export default function InterestForm() {
    const [Dataform, setDataform] = React.useState({})
    const nav = useNavigate()
    const field = [          //Field in dialog
        { id: 'IAQID', label: 'IAQID' },
        { id: 'QUESTION', label: 'Question' },
        { id: 'HIP', label: 'HIP' },
    ]

    React.useEffect(() => {
        axios.get(`http://localhost/recommendation_system/api/admin/Count.php?table=ia_questions`).then(function (response) {
            // setcount(response.data)
            setDataform(() => ({
                IAQID: `IAQID_${response.data + 1}`,
                QUESTION: "",
                HIP: "",
            }))
        })
    }, [])

    const handleSubmit = () => {
        if (Dataform.QUESTION === "" || Dataform.HIP === "") {
            alert("Please fill up all the fields")
        }else if(Dataform.QUESTION.length <=2){
            alert("Please input more question!")
        }else {
            // console.log(Dataform)
            axios.post(`http://localhost/recommendation_system/api/admin/IA_Questions.php`, Dataform).then(function (response) {
                alert("Record added successfully")
                nav("../")
            })
        }
    }

    const onChange = (event) => {
        const { name, value } = event.target

        setDataform((prev) => ({
            ...prev,
            [name]: value
        }))
    }


    return (
        <Fade in={true} timeout={1000}>
            <div>
                <div className="CI_Form_Title">
                    <div>
                        <p className="">Add Question</p>
                        <p className="CI_Form_subTitle">Add a question for Interest assessment</p>
                    </div>
                </div>
                <div className="insterest_assesement">
                    {
                        field.map((val, index) => {
                            let value = Dataform[val.id] || ""
                            return (
                                <div key={index}>
                                    {
                                        val.id === "HIP" ?
                                            <FormControl sx={{ mt: "10px", width: "100%", border: "0px" }} size="small">
                                                <Select
                                                    value={Dataform.HIP || ""}
                                                    onChange={onChange}
                                                    displayEmpty
                                                    name="HIP"
                                                    sx={combo_sx}
                                                >
                                                    <MenuItem value="">
                                                        <em>None</em>
                                                    </MenuItem>
                                                    <MenuItem value="Realistic">Realistic</MenuItem>
                                                    <MenuItem value="Investigative">Investigative</MenuItem>
                                                    <MenuItem value="Artistic">Artistic</MenuItem>
                                                    <MenuItem value="Social">Social</MenuItem>
                                                    <MenuItem value="Enterprising">Enterprising</MenuItem>
                                                    <MenuItem value="Conventional">Conventional</MenuItem>
                                                </Select>
                                            </FormControl>
                                            :

                                            <input disabled={index === 0 ? true : false} className="tab_input" name={val.id} placeholder={val.label} value={value} onChange={onChange} />
                                    }
                                </div>
                            )
                        })
                    }
                    <button className="button_save" style={{ width: "max-content", marginTop: '20px' }} onClick={handleSubmit}>Add</button>
                </div>
            </div>
        </Fade>
    )
}