import '../css/ErrorPage.css'
import Image from '../assets/Images/404 Error.svg'
import { useNavigate } from 'react-router-dom'

export default function Error(){
    const navigate = useNavigate()
    return(
        <div className="ErrorPage">
            <img src={Image} className="Error_Image"></img>
            <h1>Ooops! Page Not Found</h1>
            <p>This page doesn't exist or was removed!</p>
            <p>We suggest you back to Back</p>
            <button onClick={()=>navigate(-1)}>Go Back</button>
        </div>
    )
}