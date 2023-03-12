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

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Index/>}>
          <Route index path="" element={<Login/>}></Route>
          <Route path="/Sign_Up" element={<SignUp/>}></Route>
        </Route>
        <Route path="/Dashboard" element={<Dashboard />}>
          <Route index path="" element={<Main/>}></Route>
          <Route path="Course" element={<Course_Directory/>}></Route>
          <Route path="Profile" element={<Profile/>}></Route>
        </Route>
        <Route path="/Admin_Login" element={<Admin_Login />}></Route>
        <Route path='*' element={<Errorpage />}/>
      </Routes>
    </BrowserRouter>
  )
}

export default App