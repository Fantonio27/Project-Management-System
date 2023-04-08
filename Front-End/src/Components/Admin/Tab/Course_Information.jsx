import Data_Table from "./Components/Table"
import React from "react";
import { useOutletContext } from "react-router-dom";
import axios from "axios"
import { IconButton } from "@mui/material";
import AddIcon from '@mui/icons-material/Add';
import EditRoundedIcon from '@mui/icons-material/EditRounded';
import DeleteRoundedIcon from '@mui/icons-material/DeleteRounded';
import MoreVertRoundedIcon from '@mui/icons-material/MoreVertRounded';
import Menu from '@mui/material/Menu';
import MenuItem from '@mui/material/MenuItem';
//For Dialog delete
import Button from '@mui/material/Button';
import Dialog from '@mui/material/Dialog';
import DialogActions from '@mui/material/DialogActions';
import DialogContent from '@mui/material/DialogContent';
import DialogContentText from '@mui/material/DialogContentText';
import DialogTitle from '@mui/material/DialogTitle';
import Slide from '@mui/material/Slide';
import { Link, Outlet } from "react-router-dom";

const menuitem_sx = {
    display: 'flex',
    gap: '10px',
    alignItems: 'center',
    fontSize: '14px',
    padding: '6px 20px',
    borderRadius: '5px',
    fontFamily: "Inter",
    fontWeight: '500',
    letterSpacing: '0.5px',

    '&:hover': {
        backgroundColor: '#f6f6f7'
    }
}

const Transition = React.forwardRef(function Transition(props, ref) {
    return <Slide direction="up" ref={ref} {...props} />;
});

export default function Course_Information() {

    const tab = useOutletContext()
    const [Dataform, setDataform] = React.useState([])

    const [content, setcontent] = React.useState()

    const [anchorEl, setAnchorEl] = React.useState(null);
    const openaction = Boolean(anchorEl);

    const [opendelete, setOpendelete] = React.useState(false);

    const[id, setid] = React.useState()

    const handleClickAction = (id) => (event) => {
        setAnchorEl(event.currentTarget);
        setid(id)
    };
    const handleCloseAction = () => {
        setAnchorEl(null);
    };

    const handleClickdelete = () => {   //for Dialog in delete
        setOpendelete(true);
        setAnchorEl(null);
    };

    const handleClosedelete = () => {    //for Dialog in delete
        setOpendelete(false);
        setAnchorEl(null);
    };

    const text = (
        <div style={{ width: "100%", display: 'flex', alignItems: 'center', justifyContent: 'space-between' }}>
            <p className="titlepertable">Course Information</p>
            <Link to="Add" style={{ textDecoration: "none" }}><button className="button_add"><AddIcon sx={{ fontSize: "22px" }} />Add Course</button></Link>
        </div>
    )
    const column = [
        { id: 'CID', label: 'CID', align: 'center', minWidth: 50 },
        { id: 'FIELD', label: 'Field', minWidth: 100 },
        { id: 'ACRONYM', label: 'Acronym', minWidth: 100 },
        { id: 'COURSE_NAME', label: 'Course Name' },
        { id: 'DATE', label: 'Date', align: 'center' },
        { id: 'ACTION', label: 'Actions', align: 'center', minWidth: 50 },
    ]

    const option = (a) => {
        return (
            //Action in Table
            <div>
                <IconButton onClick={handleClickAction(a)}>
                    <MoreVertRoundedIcon sx={{ fontSize: "19px" }} />
                </IconButton>
                <Menu
                    elevation={0}
                    anchorEl={anchorEl}
                    open={openaction}
                    onClose={handleCloseAction}
                    anchorOrigin={{ vertical: 'bottom', horizontal: 'right' }}
                    transformOrigin={{ vertical: 'top', horizontal: 'right' }}
                    PaperProps={{
                        style: {
                            padding: '0px 5px',
                            borderRadius: "10px",
                            border: '1px solid #F8F9FA',
                            boxShadow: 'rgba(149, 157, 165, 0.2) 0px 8px 24px',
                        }
                    }}
                >
                    <Link to={`Edit/${id}`} style={{ textDecoration: "none" }}>
                        <span style={{ color: '#252a35' }}>
                            <MenuItem sx={menuitem_sx} onClick={handleCloseAction}>
                                <EditRoundedIcon sx={{ fontSize: "19px" }} />
                                Edit
                            </MenuItem>
                        </span>
                    </Link>
                    <Link to="Delete" style={{ textDecoration: "none" }}>
                        <span style={{ color: '#db514cff' }}>
                            <MenuItem sx={menuitem_sx} onClick={handleClickdelete}>
                                <DeleteRoundedIcon sx={{ fontSize: "19px" }} />
                                Delete
                            </MenuItem>
                        </span>
                    </Link>
                </Menu>
            </div>
        )
    }


    function dataperrow(columnid, index, val, row) {
        if (columnid === "ACTION") {
            return (option(row.CID))
        } else {
            return val
        }
    }

    const dialogdelete = (
        <Dialog
            open={opendelete}
            TransitionComponent={Transition}
            keepMounted
            onClose={handleClosedelete}
            aria-describedby="alert-dialog-slide-description"
        >
            <DialogTitle>{"Use Google's location service?"}</DialogTitle>
            <DialogContent>
                <DialogContentText id="alert-dialog-slide-description">
                    Let Google help apps determine location. This means sending anonymous
                    location data to Google, even when no apps are running.
                </DialogContentText>
            </DialogContent>
            <DialogActions>
                <Button onClick={handleClosedelete}>Disagree</Button>
                <Button onClick={handleClosedelete}>Agree</Button>
            </DialogActions>
        </Dialog>
    )

    React.useEffect(() => {
        axios.get(`http://localhost/recommendation_system/api/admin/Course_Information.php`).then(function (response) {
            setDataform(response.data)
        })
    }, [tab])

    React.useEffect(() => {
        locationget()
    }, [content])

    function locationget() {
        const parts = location.href.split('/').at(-1);

        if (parts === "Delete" || parts === "Add" || parts === "Edit") {
            setcontent(false)
        } else {
            setcontent(true)
        }
    }

    return (
        <div>
            {content ?
                <Data_Table
                    Name="Course Information"
                    Title={text}
                    Column={column}
                    Row={Dataform}
                    Function={dataperrow}
                    Dialog={dialogdelete}
                />
                :
                <Outlet />
            }
        </div>
    )
}
