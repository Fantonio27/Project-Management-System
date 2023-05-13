import { BrowserRouter, Route, Routes } from "react-router-dom";

/** User Pages **/

// User Form
import SignUp from "./Components/User/Forms/SignUp"
import Login from "./Components/User/Forms/Login";

// User Dashboard
import Dashboard from "./Components/User/Dashboard";

//User Tabs
import Main_Dashboard from './Components/User/Tab/Main_Dashboard'
import Course_Directory from "./Components/User/Tab/Course_Directory"
import IA_Information from "./Components/User/Tab/IA_Information";
import Profile from './Components/User/Tab/Profile'
import Help from "./Components/User/Tab/Help";

//Components 
import Examination from "./Components/User/Tab/Examination";
import SAT from "./Components/User/Tab/Components/SAT";
import Course_Info from "./Components/User/Tab/Components/Course_Information";
import IA from "./Components/User/Tab/Components/IA";
import Result from "./Components/User/Tab/Components/Result";
/* End*/


/** Admin Pages **/

// Admin Form
import Admin_Login from './Components/Admin/Forms/Admin_Login'

//Admin Pages
import Admin_Main from "./Components/Admin/Tab/Admin_Main";
import Admin_Dashboard from "./Layout/Admin_Dashboard"

//Admin Tabs
import Student_Info from "./Components/Admin/Tab/Student_Information"
import Course_Information from "./Components/Admin/Tab/Course_Information";
import Student_Results from "./Components/Admin/Tab/Student_Result";
import Entrance_Exam from "./Components/Admin/Tab/Entrance_Exam";
import Interest_Assessment from "./Components/Admin/Tab/IA";
import Subject_Questions from "./Components/Admin/Tab/SubjectQuestions";
//Components 
import Form from "./Components/Admin/Tab/Components/CI_Form";
import Add_Entrance_Exam from "./Components/Admin/Tab/Components/Add_Entrance_Exam";
import InterestForm from "./Components/Admin/Tab/Components/InterestFormAdd";
import InterestFormEdit from "./Components/Admin/Tab/Components/InterestFormEdit";
import Edit_Questions from "./Components/Admin/Tab/Components/Edit_Questions";
import Add_Questions from "./Components/Admin/Tab/Components/Add_Questions";
/* End*/


/** Extra Pages **/
import Errorpage from './Components/ErrorPage'
import Index from "./Layout/index";




function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Index />}>
          <Route path="" element={<Login />}></Route>
          <Route path="Sign_Up" element={<SignUp />} />
        </Route>

        <Route path="Dashboard" element={<Dashboard />}>
          <Route path="" element={<Main_Dashboard />}></Route>
          <Route path="Course_Directory">
            <Route path="" element={<Course_Directory />} />
            <Route path=":name" element={<Course_Info />} />
          </Route>
          <Route path="IA_Information" element={<IA_Information />} />
          <Route path="Examination">
            <Route path="" element={<Examination />} />
            <Route path="Scholastic_Aptitude_Test">
              <Route index path="" element={<SAT />} />
              <Route path=":sub" element={<SAT />}>
                <Route index path=":q" element={<SAT />}></Route>
              </Route>
            </Route>
            <Route path="Interest_Assessment" element={<IA />} />
            <Route path="Exam_Result" element={<Result />} />
          </Route>
          <Route path="Help" element={<Help />} />
          <Route path="User_Profile" element={<Profile />} />
        </Route>

        <Route path="Admin_Login" element={<Admin_Login />} />

        <Route path="Admin_Dashboard" element={<Admin_Dashboard />}>
          <Route path="" element={<Admin_Main />} />
          <Route path="Student_Information" element={<Student_Info />} />
          <Route path="Course_Information">
            <Route index path="" element={<Course_Information />} />
            {/* <Route path=":name" element={<Course_Information />} /> */}
            <Route path="Edit/:cid" element={<Form />} />
            <Route path="Add" element={<Form />} />
          </Route>
          <Route path="Student_Results/:name" element={<Student_Results />} />

          <Route path="Examination">
            <Route path="Information">
              <Route path="" element={<Entrance_Exam />} />
              <Route path="Edit/:id" element={<Add_Entrance_Exam />} />
            </Route>
            <Route path=":sub">
              <Route path="" element={<Subject_Questions />} />
              <Route path="Add" element={<Add_Questions />} />
              <Route path="Edit/:id" element={<Edit_Questions />} />
            </Route>
          </Route>
          <Route path="Interest_Assessment">
            <Route path="" element={<Interest_Assessment />} />
            <Route path="Edit/:cid" element={<InterestFormEdit />} />
            <Route path="Add" element={<InterestForm />} />
          </Route>
        </Route>

        <Route path='*' element={<Errorpage />} />
        {/* 
        <Route path="/Dashboard" element={<Dashboard />}>
          <Route index path="" element={<Main />}></Route>
          <Route path="Course_Diretory" element={<Course />}>
            <Route path="" element={<Course_Directory />}></Route>
            <Route path=":name" element={<Course_Info />}></Route>
          </Route>
          <Route path="Examination" element={<Exam_Page />}>
            <Route path="" element={<Examination_Main />}></Route>
    
          </Route>
          <Route path="Help" element={<Help />}></Route>
          <Route path="Profile" element={<Profile />}></Route>
        </Route> */}

        {/*Admin Dashboard*/}
      </Routes>
    </BrowserRouter>
  )
}

export default App