
import "../../css/Help.css"

export default function Help() {

    const faq = [
        {
            no: 1,
            title: "How do we get the recommended course? ",
            text: "The student who participates in answering the Course Directory with Recommendation System will only receive a recommendation after they have previously completed the test, which will display the suggested course based on their performance. Furthermore, the system's results will give students an idea of what subject they have weaknesses in and enhance on it and what possible knowledge and skill set they can significantly improve before enlisting college courses or their suitable interests in their professions.",
        },
        {
            no: 2,
            title: "How do we take the exam?",
            text: "Students can find the exam by navigating through the Course Directory with Recommendation System's side navigation bar; there, they can find the specified questions and answers that the recipient was given. There are 30 Science Questions and Answers, 30 Math Questions and Answers, 20 English Questions and Answers, and 20 Reading Comprehension Questions and Answers.",
        },
        {
            no: 3,
            title: "Can other students see my Results?",
            text: "No, our team ensures that no one can see the student results and scores other than you, who answered the questions, the system administrator, and the teacher or professor in charge of the section.",
        },
        {
            no: 4,
            title: "Can I retake the exam if I want to?",
            text: "Yes, and perhaps no. The student may retake the exam if they do not receive the desired score or outcomes. No, because the student can only take the exam in the computer lab of their school facility and under the supervision of the professor or teacher in charge of the unit. In conclusion, if the professor or teacher assigns a specific date for the student to take the exam and the student fails to do so on time or changes their mind about participating, it is up to the professor or teacher to supervise this student or to move this student to the next section that will take the exam next.",
        },
        {
            no: 5,
            title: "Will I have to take the recommended course in my college years?",
            text: "It is up to the student to take the recommended course based on the results; the Course Directory with Recommendation System merely provides a recommendation on what corresponds with their examination scores. This will provide Caloocan High School students with a better understanding of what college career or another interest profession they wish to pursue. If the student wants to avoid following the recommendation, they have the freedom to select or pursue the profession of their choice; this system will provide them a glimpse of what they want in their career.",
        },
    ]
    return (
        <div className="Help">
            <h1 className="Dashboard_h1">Help</h1>
            <p className="Help_p">Here are some of the guides in using Course Directory with Recommendation System.</p>
            <div className="Help_container">
                {
                    faq.map((data) => (
                        <div key={data.no} className="Help_container_div">
                            <h1 className="Help_h2">{data.title}</h1>
                            <p className="Help_p2">{data.text}</p>
                        </div>
                    ))
                }
            </div>
        </div>
    )
}


{/* <div className="Contact">
                <div className="developer_contact">
                    <h1>Reach us</h1>
                    <p>Thank you for participating in the Course Directory with Recommendation System; our team gives our best effort to give Senior High School students from Caloocan High School a better knowledge of what college profession or another interest profession they intend to follow. Do you have any questions or comments? Contact or message us right now using our social media sites, email, or the contact information provided.</p>
                    <ul>
                        <li>Francis Louie Antonio / antonio.francislouie@ue.edu.ph / 09666376662 </li>
                        <li>Vince Braca / braca.vincedavidangelo@ue.edu.ph / 09275565805</li>
                        <li>Levy Matthew Elcano / elcano.levymatthew@ue.edu.ph / 09569204606</li>
                        <li>Robin Orbiso / orbiso.robinjames@ue.edu.ph / 09053409072</li>
                        <li>Nicolas Ponce / ponceiii.nicolas@ue.edu.ph / 09760398063</li>
                    </ul>
                </div>
                <div className="Benificiary_contact">
                    2
                </div>
            </div> */}