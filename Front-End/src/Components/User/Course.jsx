import { Outlet, useOutletContext } from "react-router-dom";

export default function Course() {
    const data = useOutletContext();
    return (
        <>
            <Outlet context={data}/>
        </>
    )
}