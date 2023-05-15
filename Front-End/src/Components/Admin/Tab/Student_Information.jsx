import Data_Table from "./Components/Table"
import { useLocation } from "react-router-dom";
import React, { useState } from "react";
import { useOutletContext } from "react-router-dom";
import axios from "axios"
import Button from "@mui/material/Button";
import { IconButton, Fade } from "@mui/material";
import Dialog from '@mui/material/Dialog';
import DialogContent from '@mui/material/DialogContent';
import DialogTitle from '@mui/material/DialogTitle';
import FolderSharedOutlinedIcon from '@mui/icons-material/FolderSharedOutlined';
import DialogActions from '@mui/material/DialogActions';
import EditRoundedIcon from '@mui/icons-material/EditRounded';
import DeleteRoundedIcon from '@mui/icons-material/DeleteRounded';
import MoreVertRoundedIcon from '@mui/icons-material/MoreVertRounded';
import Menu from '@mui/material/Menu';
import MenuItem from '@mui/material/MenuItem';

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

const icon_dialog_sx = {
    backgroundColor: 'rgb(202, 240, 248,0.6)',
    padding: '15px',
    borderRadius: '30px',
    color: 'rgb(30, 96, 145, 0.9)',
    border: '1px solid #F8F9FA'
}

const button_sx = {
    padding: '6px 35px',
    backgroundColor: 'WHITE',
    border: '1px solid #e6e8ebff',
    color: '#697280ff',
    borderRadius: '5px',
    textTransform: "none",
    fontSize: '13px',
    fontFamily: "'QuickSand', sans-serif",
    fontWeight: 'bold',
    letterSpacing: '2px',
    boxShadow: 'rgba(149, 157, 165, 0.2) 0px 8px 24px',
    "&:hover": {
        backgroundColor: '#0077b6',
    }
}

const dialog_sx = {
    style: {
        backgroundColor: 'white',
        boxShadow: 'rgba(149, 157, 165, 0.2) 0px 8px 24px',
        borderRadius: '15px',
        padding: '20px',
        width: '100%',
    },
}

const Transition = React.forwardRef(function Transition(props, ref) {
    return <Fade ref={ref} {...props} />;
});

export default function Student_Results() {

    // const parts = location.href.split('/').at(-1);
    const tab = useOutletContext()
    const [Dataform, setDataform] = useState([])
    const [open, setOpen] = useState(false);    //for Dialog in view

    const [anchorEl, setAnchorEl] = React.useState(null);
    const openaction = Boolean(anchorEl);

    const [id, setid] = React.useState()
    const [stat, setstat] = React.useState()

    const handleClickAction = (id) => (event) => {
        setAnchorEl(event.currentTarget);
        setid(id.LRN)
        setstat(id.ACCOUNT_STATUS)
    };
    const handleCloseAction = () => {
        setAnchorEl(null);

        // if(a === 1){
        //     console.log("1")
        // }
    };

    const text = (
        <p className="titlepertable">Student Information</p>
    )

    const column = [
        { id: 'LRN', label: 'LRN', },
        { id: 'STUDENT_NAME', label: 'Student Name', minWidth: 150 },
        { id: 'EMAIL_ADDRESS', label: 'Email Address', },
        { id: 'EXAM_STATUS', label: 'Exam Status', },
        { id: 'ACCOUNT_STATUS', label: 'Account Status', align: 'center' },
        { id: 'ACCOUNT_CREATED', label: 'Date', align: 'center' },
        { id: 'ACTION1', label: 'Action', align: 'center' },
    ]

    const field = [          //Field in dialog
        { id: 'STUDENT_FIRSTNAME', label: 'First Name', value: 'Francis', disable: true },
        { id: 'STUDENT_LASTNAME', label: 'Last Name', value: 'Antonio', disable: true },
        { id: 'EMAIL_ADDRESS', label: 'Email Address', value: 'francis.antonio@yahoo.com', disable: true },
        { id: 'PASSWORD', label: 'Password', value: 'password', disable: false },
        { id: 'CONFIRM_PASSWORD', label: 'Confirm Password', value: 'Confirm Password', disable: false },
        { id: 'EXAM_STATUS', label: 'Exam Status', value: 'Passed', disable: true },
        { id: 'SHS_TRACK', label: 'SHS Track', value: 'ICT', disable: true },
    ]

    const [userdata, setuserdata] = React.useState({
        // ACCOUNT_CREATED: '',
        // STUDENT_FIRSTNAME: '',
        // STUDENT_LASTNAME: '',
        // EMAIL_ADDRESS: '',
        // PASSWORD: '',
        // EXAM_STATUS: '',
        // SHS_TRACK: '',
    })

    React.useEffect(() => {
        axios.get(`http://localhost/recommendation_system/api/admin/Student_information.php`).then(function (response) {
            setDataform(response.data)
        })
    }, [tab])

    React.useEffect(() => {
        axios.get(`http://localhost/recommendation_system/api/admin/user.php?lrn=${id}`).then(function (response) {
            setuserdata(prev => ({
                ...prev,
                ACCOUNT_CREATED: response.data.ACCOUNT_CREATED,
                STUDENT_FIRSTNAME: response.data.STUDENT_FIRSTNAME,
                STUDENT_LASTNAME: response.data.STUDENT_LASTNAME,
                EMAIL_ADDRESS: response.data.EMAIL_ADDRESS,
                EXAM_STATUS: response.data.EXAM_STATUS,
                SHS_TRACK: response.data.SHS_TRACK,
                PASSWORD: '',
                CONFIRM: '',
            }))
        })
    }, [id])

    const handleClickOpen = () => {
        setOpen(true);
        setAnchorEl(null);
    };

    const handleClose = () => {
        setOpen(false);
        setid("")
        setstat("")
    };

    const handleupdate = () => {
        const ac = stat === "ACTIVE" ? "INACTIVE" : "ACTIVE"
        axios.put(`http://localhost/recommendation_system/api/admin/updatestatus.php?val=${ac}&&lrn=${id}`).then(function (response) {
            // console.log(response.data)
            window.location.reload()
        })
    }

    const option = (a) => {
        return (    //Action in Table
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
                    <span style={{ color: '#252a35' }}>
                        <MenuItem sx={menuitem_sx} onClick={handleClickOpen}>
                            <EditRoundedIcon sx={{ fontSize: "19px" }} />
                            Edit
                        </MenuItem>
                    </span>
                    <span style={{ color: stat === "ACTIVE" ? '#db514cff' : '#69b96eff' }}>
                        <MenuItem sx={menuitem_sx} onClick={handleupdate}>
                            {/* <DeleteRoundedIcon sx={{ fontSize: "19px" }} /> */}
                            {stat === "ACTIVE" ? "Inactive" : "Active"}
                        </MenuItem>
                    </span>
                </Menu>
            </div>
        )
    }

    function dataperrow(columnid, index, val, row) {
        if (columnid === "STUDENT_NAME") {
            return (
                <p style={{ fontWeight: "600" }}>
                    {row.STUDENT_FIRSTNAME} {row.STUDENT_LASTNAME}
                </p>
            )

        } else if (columnid === "ACTION1") {
            return (option(row))
        }
        else if (columnid === "ACCOUNT_STATUS") {
            if (val === "ACTIVE") {
                return (columnid = val,
                    <p className="Account_Status_p1">Active</p>)
            } else {
                return (
                    <p className="Account_Status_p2">Inactive</p>
                )
            }
        }
        else {
            return val
        }
    }

    // console.log(id)

    const onchangepassword = (event) => {
        const { name, value } = event.target
        setuserdata(prev => ({
            ...prev,
            [name]: value
        }))
    }

    const onsubmit = (event) => {
        var password_val = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$/

        if (!password_val.test(userdata.PASSWORD)) { 
                alert("Password should be contain: at least 8 characters, one uppercase letter, one lowercase letter, and one number")
        }else if(userdata.PASSWORD !== userdata.CONFIRM_PASSWORD){
            alert("Password didn't match")
        }else {
            axios.put(`http://localhost/recommendation_system/api/admin/updateuser.php?pass=${userdata.PASSWORD}&&lrn=${id}`).then(function (response) {
            // console.log(response.data)
            alert("Record Saved")
            window.location.reload()
        })
        }
    }

    const dialog = (
        <Dialog
            open={open}
            TransitionComponent={Transition}
            keepMounted
            onClose={handleClose}
            aria-describedby="alert-dialog-slide-description"
            PaperProps={dialog_sx}
            sx={{
                '& .MuiBackdrop-root': { backgroundColor: 'rgb(52, 58, 64,0.25)' },
            }}
        >
            <DialogTitle sx={{ display: 'flex', alignItems: 'center', gap: '10px', borderBottom: '1px solid #E9ECEF' }}>
                <FolderSharedOutlinedIcon sx={icon_dialog_sx} />
                <div>
                    <p className="Dialog_title_p1">Student Information</p>
                    <p className="Dialog_title_p2">View all the records of Student Information</p>
                </div>
            </DialogTitle>
            <DialogContent>
                <div>
                    <div className="dialog_body_p1">
                        <div className="dialog_body_div">
                            <p>Date Created:{userdata.ACCOUNT_CREATED}</p>
                            LRN:
                            <span style={{ color: '#1e6091', marginLeft: '5px' }}>{id}</span>
                        </div>
                        <div className="dialog_body_alert" style={{ backgroundColor: stat === "ACTIVE" ? "#7bb255ff" : "#db514cff", height: '15px' }}>
                            <p style={{ color: 'white' }}>Active</p>
                        </div>
                    </div>
                    <div className="dialog_body">
                        {
                            field.map((val) => (
                                <div key={val.id} className={val.id}>
                                    <p className="dialog_body_p2">{val.label}</p>
                                    {
                                        val.id === "PASSWORD" || val.id === "CONFIRM_PASSWORD" ?
                                            <input type="text" name={val.id === "PASSWORD" ? "PASSWORD" : "CONFIRM_PASSWORD"} value={userdata[val.id]|| ""} placeholder={val.label} className="dialog_body_input" disabled={val.disable} onChange={onchangepassword} /> :
                                            <input type="text" value={userdata[val.id] || ""} placeholder={val.label} className="dialog_body_input" disabled={val.disable} />
                                    }
                                </div>
                            ))
                        }
                    </div>
                </div>
                <DialogActions>
                    <Button sx={button_sx} onClick={handleClose}>Close</Button>
                    <button className="button_save" onClick={onsubmit}>Save</button>
                </DialogActions>
            </DialogContent>
        </Dialog>
    )

    return (
        <div>
            <Data_Table
                Name="Student Information"
                Title={text}
                Column={column}
                Row={Dataform}
                Function={dataperrow}
                Dialog={dialog}
            />
        </div>
    )
}
