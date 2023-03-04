import './App.css'
import Login from "./Pages/Login"
import Dashboard from './Pages/Dashboard'
import Course_Information from './Pages/Course_Information';
import { BrowserRouter, Route, Router, Routes } from "react-router-dom";

function App() {

  return (
    <div className="App">
      <BrowserRouter>
        <Routes>
          <Route path="/" element={<Login/>}></Route>
          <Route path="/Dashboard" element={<Dashboard/>}></Route>
        </Routes>
      </BrowserRouter>
    </div>
  )
}

export default App
