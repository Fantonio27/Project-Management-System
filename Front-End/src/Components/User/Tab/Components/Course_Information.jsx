import "../../../../css/User/Tabs/Components/Course_Info.css"
// // import image from "../../../../../assets/Images/2.jpg"
// import { useState } from "react";
// import { styled } from '@mui/material/styles';
// import ArrowForwardIosSharpIcon from '@mui/icons-material/ArrowForwardIosSharp';
// import MuiAccordion from '@mui/material/Accordion';
// import MuiAccordionSummary from '@mui/material/AccordionSummary';
// import MuiAccordionDetails from '@mui/material/AccordionDetails';
// import Grow from '@mui/material/Grow';

// const Accordion = styled((props) => (
//     <MuiAccordion disableGutters elevation={0} square {...props} />
// ))(({ theme }) => ({
//     border: `0px`,
//     transition: "0.3s",
//     '&:not(:last-child)': {
//         borderBottom: 0,
//     },
//     '&:before': {
//         display: 'none',
//     }
// }));

// const AccordionSummary = styled((props) => (
//     <MuiAccordionSummary
//         expandIcon={<ArrowForwardIosSharpIcon sx={{ fontSize: '0.9rem' }} />}
//         {...props}
//     />
// ))(({ theme }) => ({
//     flexDirection: 'row-reverse',
//     '& .MuiAccordionSummary-expandIconWrapper.Mui-expanded': {
//         transform: 'rotate(90deg)',
//     },
//     '& .MuiAccordionSummary-content': {
//         marginLeft: theme.spacing(1),
//     },
//     '&:hover': {
//         backgroundColor: "rgba(56, 142, 60, 0.2)"
//     }
// }));

// const AccordionDetails = styled(MuiAccordionDetails)(({ theme }) => ({
//     padding: "17px 40px 20px",
// }));


export default function Course_Info() {

    const Array = [
        "Network Administrator",
        "Database Manager",
        "Technical Support Specialist",
        "Web Developer",
        "QA Specialist",
        // "Mobile Applications Developer",
    ]
    return (
        <div className="Course_Info">
            <div className="Course_Info_header">
                <div>
                    <img src="/1.jpg" className="Course_header_img"></img>
                </div>
                <div>
                    <p className="Course_header_p1">Formal Sciences</p>
                    <p className="Course_header_p2">Bachelor of Science in Computer Science (BSSC)</p>
                    <p className="Course_header_p3">Bachelor of Science in Computer Science is a four-year degree program in the Philippines that is generally concerned with the effective use of computation methods to analyze, solve, and come up with practical solutions for different problems, often through the use of computers or computer programs designed to perform specific tasks.</p>
                </div>
            </div>
            <div className="Course_Info_career">
                <p className="Course_I_p1">Top 6 best job for BSSC graduate</p>
                <div className="Course_Info_c_div">
                    {
                        Array.map((val, index) => {
                            return (
                                <div key={index} className="Course_Info_c_box">
                                    <p className="Course_I_c_p1">{val}</p>
                                    <p>Database administrators employ specialized software to organize and keep track of data. The software can be associated with software configuration, security and performance when applicable.</p>
                                </div>
                            )
                        })
                    }
                </div>
            </div>
        </div>
    )
}

//     const header_style = {
//         backgroundImage: `url(${image})`
//     }

//     const Array = [
//         "Network Administrator",
//         "Database Manager",
//         "Technical Support Specialist",
//         "Web Developer",
//         "QA Specialist",
//         "Mobile Applications Developer",
//     ]

//     const [expanded, setExpanded] = useState('panel1');

//     const handleChange = (panel) => (event, newExpanded) => {
//         setExpanded(newExpanded ? panel : false);
//     };

//     return (
//         <Grow in={true} timeout={1000}>
//             <div className="Course_Information">
//                 <div className="Course_info_container">
//                     <div className="Course_header" style={header_style}>
//                         <div className="Course_bg">
//                             <h1 className="Course_header_h1">Bachelor of Science in</h1>
//                             <h1 className="Course_header_h2">Information Technology (BSIT)</h1>
//                             <p className="Course_header_p1">Involves the use of technology to communicate, transfer data and process information. </p>
//                         </div>
//                     </div>
//                     <div className="Course_info_div">
//                         <div className="Course_info_box">
//                             <p className="Course_info_p1" style={{ borderBottom: "1px solid #dee2e6" }}>Course Information: </p>
//                             <p className="Course_info_p2">The Bachelor of Science in Information
//                                 Technology (BSIT) is a four-year degree program in the Philippines that
//                                 deals with the processing and distribution of data with emphasis on its
//                                 application on businesses. By enrolling in this program, you will learn
//                                 how to write, design, and maintain computer programs; check them for errors;
//                                 determine appropriate solutions to fix problems, and rewrite codes to accommodate
//                                 necessary changes. Since this course is more about the business application of the
//                                 systems or applications you will create, you may also be taking up a few business
//                                 subjects such as Accounting and Human Resource Management.</p>
//                         </div>
//                         <div className="Course_info_box">
//                             <p className="Course_info_p1" style={{ marginBottom: "7px" }}>Some careers that graduate of BSIT would be:</p>
//                             <div>
//                                 {
//                                     Array.map((text, index) => (
//                                         <Accordion key={index} expanded={expanded === index} onChange={handleChange(index)} sx={{ margin: 0 }}>
//                                             <AccordionSummary sx={{
//                                                 backgroundColor: expanded === index ? "rgba(56, 142, 60, 0.2)" : "white" //"#388e3c17"
//                                             }}>
//                                                 <h1 className="job_title">{text}</h1>
//                                             </AccordionSummary>
//                                             <AccordionDetails sx={{
//                                                 backgroundColor: expanded === index ? "rgba(56, 142, 60, 0.1)" : "white" //"#388e3c17"
//                                             }}>
//                                                 <p className="job_desc">
//                                                     Database administrators employ specialized software to organize and keep track of data. The software can be associated with software configuration, security and performance when applicable.
//                                                 </p>
//                                             </AccordionDetails>
//                                         </Accordion>
//                                     ))
//                                 }
//                             </div>
//                         </div>
//                     </div>
//                 </div>
//             </div>
//         </Grow>
//     )
// }

// {/* {
//                             Array.map((index, text) => (

//                                 <div className="Course_accordion_box" key={index}>
//                                     <div className="Course_job_title">
//                                         <ArrowForwardIosIcon sx={arrow_sx} />
//                                         <p>Networking</p>
//                                     </div>
//                                     <div className="Course_job_info" style={{
//                                         padding: open ? "" : "",
//                                         height: open ? "" : ""
//                                     }}>
//                                         determine appropriate solutions to fix problems, and rewrite codes to accommodate
//                                         necessary changes. Since this course is more about the business application of the
//                                         systems or applications you will create, you may also be taking up a few business
//                                         subjects such as Accounting and Human Resource Management.
//                                     </div>
//                                 </div>
//                             ))
//                         } */}