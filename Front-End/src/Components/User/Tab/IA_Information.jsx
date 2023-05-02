import data from '../../../assets/Data/IA_Information_new'

export default function IA_Information() {

    console.log(data)
    return (
        <div>
            {
                data.title.map((value, index) => (
                    <p>{value.department}</p> 
                    // {
                    //     data.subcatergory[value.id].map((subvalue) => {
                    //         return (
                    //             <div>
                    //                 <p>{subvalue.title}</p>
                    //                 <p>{subvalue.description}</p>
                    //             </div>
                    //         )
                    //     })
                    // }           
                ))
            }
        </div>
    )
}




// import "../../../css/User/Tabs/IA_Information.css"
// import data from '../../../assets/Data/IA_Information'
// import React from "react";
// import { Fade } from "@mui/material";
// export default function IA_Information() {

//     const array = [
//         'rgb(0, 150, 199)',
//         'rgb(157, 78, 221)',
//         'rgb(105, 185, 110)',
//         '#ffa62b',
//         'rgba(219, 81, 76)',
//         'rgb(251, 133, 0)',
//     ]

//     return (
//         <Fade in={true} timeout={800}>
//             <div className="IA_Information">
//                 <div className="IA_I_div1">
//                     {
//                         data.header.map((val, index) =>
//                         (
//                             <div key={val.id}>
//                                 <p className="IA_I_p1">{val.title}</p>
//                                 <p className="IA_I_p2">{val.text}</p>
//                             </div>
//                         )
//                         )}
//                 </div>
//                 <div style={{ boxShadow: 'rgba(0, 0, 0, 0.09) 0px 3px 12px', marginBottom: '50px' }}>
//                     {
//                         data.ia.map((val, index) => {
//                             return (
//                                 <div className="IA_I_table1" key={val.id} style={{ borderBottom: index === data.length - 1 ? '1px solid #e9ecef' : '0px' }}>
//                                     <div className="IA_I_COL1" >
//                                         <div className="IA_I_COL1_p1"><p style={{ color: array[index] }}>{val.label[0]}</p></div>
//                                         <div className="IA_I_COL1_p2"><p style={{ color: array[index] }}>{val.label}</p></div>
//                                     </div>
//                                     <div className="IA_I_COL2" >
//                                         <div>
//                                             <p className="IA_I_COL2_p1">{val.title}</p>
//                                             <p className="IA_I_COL2_p2"><b>Personality traits: </b>{val.personality}</p>
//                                             <p className="IA_I_COL2_p3"><b>Hobbies and career interests: </b> {val.hobies}</p>
//                                         </div>
//                                     </div>
//                                 </div>
//                             )
//                         })
//                     }
//                 </div>
//                 <div>
//                     <p className="IA_I_p1">{data.lower.title}</p>
//                     <p className="IA_I_p2">{data.lower.text}</p>
//                 </div>
//                 <div className="IA_I_table2">
//                     {
//                         data.career.map((val, index) => (
//                             <div className="IA_I_column" key={val.id}>
//                                 <p className="IA_I_Column_title">{val.columntitle[0]}-{val.columntitle}</p>
//                                 {
//                                     val.columntext.map((colval, index) => {
//                                         return (
//                                             <p className="IA_I_Column_text" key={index}>{colval}</p>
//                                         )
//                                     })
//                                 }
//                             </div>
//                         ))
//                     }
//                 </div>
//             </div>
//         </Fade>
//     )
// }