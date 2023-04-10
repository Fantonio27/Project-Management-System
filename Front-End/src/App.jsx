import { BrowserRouter, Route, Routes } from "react-router-dom";
import Dashboard from './Layout/Dashboard'
import Admin_Login from './Components/Admin/Admin_Login'
import Main from './Components/User/Main'
import Profile from './Components/User/User_Profile'
import Course_Directory from "./Components/User/Course_Directory"
import SignUp from "./Components/User/SignUp"
import Login from "./Components/User/User_login";
import Errorpage from './Components/ErrorPage'
import Index from "./Layout/index";
import SAT from "./Components/User/SAT";
import Exam_Page from "./Layout/Exam_page";
import Examination_Main from "./Components/User/Examination_Main";
import Help from "./Components/User/Help";
import Course_Info from "./Components/User/Course_Information";
import Course from "./Components/User/Course"
import Admin_Main from "./Components/Admin/Tab/Admin_Main";
import Admin_Dashboard from "./Layout/Admin_Dashboard"
import Student_Info from "./Components/Admin/Tab/Student_Information"
import Course_Information from "./Components/Admin/Tab/Course_Information";
import Student_Results from "./Components/Admin/Tab/Student_Result";
import Form from "./Components/Admin/Tab/Components/CI_Form";
import Entrance_Exam from "./Components/Admin/Tab/Entrance_Exam";
import Add_Entrance_Exam from "./Components/Admin/Tab/Components/Add_Entrance_Exam";

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Index />}>
          <Route index path="" element={<Login />}></Route>
          <Route path="Sign_Up" element={<SignUp />}></Route>
          <Route path="Admin_Login" element={<Admin_Login />}></Route>
        </Route>
        <Route path="/Dashboard" element={<Dashboard />}>
          <Route index path="" element={<Main />}></Route>
          <Route path="Course_Diretory" element={<Course />}>
            <Route path="" element={<Course_Directory />}></Route>
            <Route path=":name" element={<Course_Info />}></Route>
          </Route>
          <Route path="Examination" element={<Exam_Page />}>
            <Route path="" element={<Examination_Main />}></Route>
            <Route path="Scholastic_Aptitude_Test" element={<SAT />}></Route>
          </Route>
          <Route path="Help" element={<Help />}></Route>
          <Route path="Profile" element={<Profile />}></Route>
        </Route>

        {/*Admin Dashboard*/}

        <Route path="/Admin_Dashboard" element={<Admin_Dashboard />}>
          <Route path="" element={<Admin_Main />} />
          <Route path="Student_Information" element={<Student_Info />} />
          <Route path="Course_Information">
            <Route index path="" element={<Course_Information />}/>
            <Route path=":name" element={<Course_Information />}/>
            <Route path="Edit/:cid" element={<Form />}/>
          </Route>
          <Route path="Student_Results/:name" element={<Student_Results />}/>
          <Route path="Entrance_Exam">
            <Route path="" element={<Entrance_Exam />}/>
            <Route path="Add" element={<Add_Entrance_Exam />}/>
          </Route>
        </Route>
        <Route path='*' element={<Errorpage />} />
      </Routes>
    </BrowserRouter>
  )
}

export default App