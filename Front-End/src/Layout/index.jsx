import { Outlet } from "react-router-dom";
import "../css/index.css"

export default function Index() {
    return (
        <div className="Body">
            <div className="Container">
                <div className="Topbox"></div>
                <div>
                    <Outlet />
                </div>

            </div>
        </div>
        // <Outlet/>
    )

}