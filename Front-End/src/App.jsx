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
import Data_Table from "./Components/Admin/Data_Table";
import Admin_Main from "./Components/Admin/Admin_Main";
import Admin_Dashboard from "./Layout/Admin_Dashboard"

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
        <Route path="/Admin_Dashboard" element={<Admin_Dashboard />}>
          <Route index path="" element={<Admin_Main />}></Route>
          <Route path="Data_Table" element={<Data_Table />}></Route>
        </Route>
        <Route path='*' element={<Errorpage />} />
      </Routes>
    </BrowserRouter>
  )
}

export default App