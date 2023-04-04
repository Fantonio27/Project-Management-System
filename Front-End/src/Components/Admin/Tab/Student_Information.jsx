import "../../../css/Admin/Student_Info.css"
import * as React from 'react';
import { useEffect, useState } from 'react';
import Table from '@mui/material/Table';
import TableBody from '@mui/material/TableBody';
import TableCell from '@mui/material/TableCell';
import TableContainer from '@mui/material/TableContainer';
import TableHead from '@mui/material/TableHead';
import TablePagination from '@mui/material/TablePagination';
import TableRow from '@mui/material/TableRow';
import SearchRoundedIcon from '@mui/icons-material/SearchRounded';
import { Fade, IconButton, Chip } from "@mui/material";
import OpenInNewRoundedIcon from '@mui/icons-material/OpenInNewRounded';
import Tooltip from '@mui/material/Tooltip';
import Grow from '@mui/material/Grow';
import Dialog from '@mui/material/Dialog';
import DialogContent from '@mui/material/DialogContent';
import DialogTitle from '@mui/material/DialogTitle';
import FolderSharedOutlinedIcon from '@mui/icons-material/FolderSharedOutlined';
import DialogActions from '@mui/material/DialogActions';
import Button from "@mui/material/Button";
import Menu from '@mui/material/Menu';
import List from '@mui/material/List';
import ListItemButton from '@mui/material/ListItemButton';
import Collapse from '@mui/material/Collapse';
import ExpandLess from '@mui/icons-material/ExpandLess';
import ExpandMore from '@mui/icons-material/ExpandMore';
import FilterAltOutlinedIcon from '@mui/icons-material/FilterAltOutlined';
import FilterAltOffOutlinedIcon from '@mui/icons-material/FilterAltOffOutlined';
import ImportExportRoundedIcon from '@mui/icons-material/ImportExportRounded';
import AssignmentIndOutlinedIcon from '@mui/icons-material/AssignmentIndOutlined';
import ArticleOutlinedIcon from '@mui/icons-material/ArticleOutlined';
import EmailOutlinedIcon from '@mui/icons-material/EmailOutlined';
import DescriptionOutlinedIcon from '@mui/icons-material/DescriptionOutlined';
import CalendarMonthOutlinedIcon from '@mui/icons-material/CalendarMonthOutlined';
import Select from '@mui/material/Select';
import Checkbox from '@mui/material/Checkbox';
import MenuItem from '@mui/material/MenuItem';

const dialog_sx = {
    style: {
        backgroundColor: 'white',
        boxShadow: 'rgba(149, 157, 165, 0.2) 0px 8px 24px',
        borderRadius: '15px',
        padding: '20px',
        width: '100%',
    },
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
    backgroundColor: '#0096c7',
    color: 'white',
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

const search_sx = {
    position: "absolute",
    left: 10,
    top: 12,
    color: "#252a3578",
    fontSize: "24px"
}

const iconbutton_sx = {
    borderRadius: "10px",
    margin: "5px 1px",
    transition: "0.3s",
    "&:hover": {
        backgroundColor: "rgb(67, 160, 71,0.22)",
        transform: 'scale(1.1)'
    }
}

const icon_sx = {
    fontSize: "19px",
    color: "rgb(67, 160, 71)"
}

const button_filter_sx = {
    color: "#505161",
    borderRadius: '5px',
    border: '1px solid #E9ECEF',
    display: 'flex',
    alignItems: 'center',
    gap: '5px',
    padding: '5px 15px',

    '&:hover': {
        backgroundColor: '#F8F9FA'
    }
}

const accordion_filter_sx = {
    padding: '5px 5px',
    display: 'flex',
    justifyContent: 'space-between',
    alignItems: 'center',
    borderRadius: '5px',
    color: '#505161d3',
    margin: '2px 0px'
}

const select_sx = {
    borderRadius: "5px",
    margin: "3px 5px",
    border: "1px solid #E9ECEF",
    boxShadow: "none",
    width: '90%',
    '.MuiOutlinedInput-notchedOutline': { border: 0 },
}

const columns = [   //Column in Table
    { id: 'No', label: '#', minWidth: 20, align: 'center' },
    { id: 'Student_Name', label: 'Student Name', minWidth: 160 },
    { id: 'LRN', label: 'LRN', minWidth: 100 },
    { id: 'Email_Address', label: 'Email Address', minWidth: 100 },
    { id: 'Exam_Status', label: 'Exam Status', minWidth: 20, align: 'center' },
    { id: 'Date_Added', label: 'Date', minWidth: 20, align: 'center' },
    { id: 'Action', label: 'Actions', minWidth: 0, align: 'center' },
];

const data = [      //Example data
    {
        Student_Name: "Francis Louie Antonio",
        LRN: "123456789012",
        Exam_Status: "Passed",
        Email_Address: "example@gmail.com",
        Date_Added: "01/02/2003",

    },
    {
        Student_Name: "Levy Elcano",
        LRN: "123456789012",
        Exam_Status: "Failed",
        Email_Address: "example@gmail.com",
        Date_Added: "01/02/2003",
    },
    {
        Student_Name: "Vince Braca",
        LRN: "123456789012",
        Exam_Status: "Failed",
        Email_Address: "example@gmail.com",
        Date_Added: "01/02/2003",
    },
    {
        Student_Name: "Nicolas Ponce",
        LRN: "123456789012",
        Exam_Status: "Failed",
        Email_Address: "example@gmail.com",
        Date_Added: "01/02/2003",
    },
    {
        Student_Name: "Robin Orbiso",
        LRN: "123456789012",
        Exam_Status: "Passed",
        Email_Address: "example@gmail.com",
        Date_Added: "01/02/2003",
    },
    {
        Student_Name: "Tiger abc",
        LRN: "123456789012",
        Exam_Status: "Failed",
        Email_Address: "example@gmail.com",
        Date_Added: "01/02/2003",
    },
    {
        Student_Name: "Lion def",
        LRN: "123456789012",
        Exam_Status: "Failed",
        Email_Address: "example@gmail.com",
        Date_Added: "01/02/2003",
    },
    {
        Student_Name: "Bird ghi",
        LRN: "123456789012",
        Exam_Status: "Failed",
        Email_Address: "example@gmail.com",
        Date_Added: "01/02/2003",
    },
    {
        Student_Name: "Ant jklm",
        LRN: "123456789012",
        Exam_Status: "Passed",
        Email_Address: "example@gmail.com",
        Date_Added: "01/02/2003",
    },
    {
        Student_Name: "Pig opqr",
        LRN: "123456789012",
        Exam_Status: "Failed",
        Email_Address: "example@gmail.com",
        Date_Added: "01/02/2003",
    },
]

const field = [          //Field in dialog
    { id: 'FirstName', label: 'First Name', value: 'Francis' },
    { id: 'LastName', label: 'Last Name', value: 'Antonio' },
    { id: 'Email', label: 'Email Address', value: 'francis.antonio@yahoo.com' },
    { id: 'Password', label: 'Password', value: 'password' },
    { id: 'ExamStatus', label: 'Exam Status', value: 'Passed' },
    { id: 'SHSTrack', label: 'SHS Track', value: 'ICT' },
]

const Transition = React.forwardRef(function Transition(props, ref) {
    return <Fade ref={ref} {...props} />;
});

export default function Student_Info() {

    const [page, setPage] = useState(0);    //page
    const [rowsPerPage, setRowsPerPage] = useState(5);

    const handleChangePage = (event, newPage) => {
        setPage(newPage);
    };

    const handleChangeRowsPerPage = (event) => {
        setRowsPerPage(+event.target.value);
        setPage(0);
    };

    useEffect(() => {   //for Scrolling up
        window.scrollTo(0, 0)
    }, [rowsPerPage >= 10])

    const [open, setOpen] = useState(false);    //for Dialog in view
    const [expanded, setExpanded] = useState(); //for the filter

    const handleClickOpen = () => {
        setOpen(true);
    };

    const handleClose = () => {
        setOpen(false);
    };
    
    function dataperrow(a, i, val) {
        if (a === "Action") {
            return (option)
        } else if (a === "Exam_Status") {
            if (val === "Passed") {
                return (a = val,
                    <p className="Account_Status_p1">Passed</p>)
            } else {
                return (
                    <p className="Account_Status_p2">Failed</p>
                )
            }
        } else {
            if (a === "No") {
                return i + 1
            } else {
                return val
            }
        }
    }

    const [lrn, setlrn] = useState()    //lrn for dialog
    const [FilterData, setFilterData] = useState({
        Sortby: '',
        Column: '',
        LRN: '',
        Email: '',
        ExamStatus: '',
        Date: ''
    })

    const [filter, setfilter] = useState(false)     //for filter

    const [chipData, setChipData] = useState([])

    const handleDeletechip = (chipToDelete) => () => {
        setChipData((chips) => chips.filter((chip) => chip.no !== chipToDelete.no));
    };

    const handlefilter = (event) => {
        setfilter(prev => !prev)
        setanchorsort(event.currentTarget);
    }

    const [anchorsort, setanchorsort] = useState(null);
    const sortmenu = Boolean(anchorsort)  //for sort menu

    useEffect(()=>{
        setExpanded(prev=>-1)
    },[sortmenu])

    const sortmenuclose = () => {
        setanchorsort(null);
        setfilter(prev => !prev)
    };

    const filtertabs = [
        {
            id: "Sortby", label: "Sort by", icon: <ImportExportRoundedIcon />,
            sub: [
                {
                    idlabel: "Column", sublabel: "Column", list: [
                        { item: "Student Name" },
                        { item: "LRN" },
                        { item: "Email Address" },
                    ]
                },
                { idlabel: "Sortby", sublabel: "Ascending", list: [{ item: "Descending" }] }
            ],
        },
        {
            id: "LRN", label: "LRN", icon: <ArticleOutlinedIcon />,
            sub: [
                {
                    idlabel: "LRN", sublabel: "LRN"
                }
            ],
        },
        {
            id: "EmailAddress", label: "Email Address", icon: <EmailOutlinedIcon />,
            sub: [
                {
                    idlabel: "Email", sublabel: "Email Address"
                }
            ],
        },
        {
            id: "ExamStatus", label: "Exam Status", icon: <DescriptionOutlinedIcon />,
            sub: [
                {
                    idlabel: "ExamTaken", sublabel: "Exam Taken"
                },
                {
                    idlabel: "ExamNotTaken", sublabel: "Exam Not Taken"
                }
            ],
        },
        {
            id: "Date", label: "Date", icon: <CalendarMonthOutlinedIcon />,
            sub: [
                {
                    idlabel: "Min", sublabel: "Date"
                },
                {
                    idlabel: "Max", sublabel: "Date"
                },
            ],
        }
    ]

    const handleopentab = (i) => () => {
        setExpanded((prev) => prev === i ? -1 : i)
    };

    const onChangefilter = (event) => {
        const { name, value } = event.target
        setFilterData((prev) => ({
            ...prev,
            [name]: value
        }))
    }

    const Filterrow = (sublabel, idlabel, list) => {
        if (sublabel == "Column" || sublabel == "Ascending") {
            return (
                <Select
                    name={idlabel}
                    value={sublabel == "Column" ? FilterData.Column : FilterData.Sortby}
                    displayEmpty
                    onChange={onChangefilter}
                    sx={select_sx}
                    size="small"
                >
                    <MenuItem value="">
                        <p style={{ color: "#697280" }}>{sublabel}</p>
                    </MenuItem>
                    {
                        list.map((lst, index) => (
                            <MenuItem key={index} value={lst.item}>{lst.item}</MenuItem>
                        ))
                    }
                </Select>
            )
        } else if (sublabel == "Exam Taken" || sublabel == "Exam Not Taken" ) {
            return (
                <>
                    <Checkbox sx={{color: "#697280d3"}}name={idlabel} /><p className="filter_p3">{sublabel}</p>
                </>
            )
        } else {
            return (
                <><input name={idlabel} placeholder={sublabel} className="filter_input"/></>
            )
        }
    }

    const menu = (
        <Menu
            elevation={0}
            anchorEl={anchorsort}
            open={sortmenu}
            onClose={sortmenuclose}
            anchorOrigin={{ vertical: 'bottom', horizontal: 'right' }}
            transformOrigin={{ vertical: 'top', horizontal: 'right' }}
            PaperProps={{
                style: {
                    marginTop: "10px",
                    borderRadius: "10px",
                    border: '1px solid #F8F9FA',
                    boxShadow: 'rgba(149, 157, 165, 0.2) 0px 8px 24px'
                }
            }}
        >
            <List
                sx={{ width: '250px', padding: "10px", bgcolor: 'background.paper' }}
                component="nav"
                subheader={
                    <div style={{ display: 'flex', alignItems: "center", justifyContent: 'space-between' }}>
                        <p className="Filter_header_p1">
                            Filters
                        </p>
                        <p className="Filter_header_p2">
                            Clear All
                        </p>
                    </div>
                }
            >
                {
                    filtertabs.map((tab, index) => {
                        const { id, icon, label, } = tab
                        return (
                            <div key={id}>
                                <ListItemButton onClick={handleopentab(index)} sx={accordion_filter_sx}>
                                    <div style={{ display: 'flex', alignItems: 'center', gap: '10px' }}>
                                        {icon}
                                        <p className="filter_p2">{label}</p>
                                    </div>
                                    {expanded === index? <ExpandLess /> : <ExpandMore />}
                                </ListItemButton>
                                <Collapse in={expanded === index} timeout="auto" unmountOnExit>
                                    {tab.sub.map((val, index) => {
                                        const { sublabel, idlabel, list } = val
                                        return (
                                            <List key={index} component="div" disablePadding sx={{ pl: 4, display: 'flex', alignItems: 'center' }}>

                                                {Filterrow(sublabel, idlabel, list)}
                                            </List>
                                        )
                                    })}
                                </Collapse>
                            </div>
                        )
                    })
                }
            </List>
        </Menu >
    )

    const option = (    //Action in Table
        <div>
            <Tooltip title="View" arrow>
                <IconButton sx={iconbutton_sx} onClick={handleClickOpen}>
                    <OpenInNewRoundedIcon sx={icon_sx} />
                </IconButton>
            </Tooltip>
        </div>
    )
    return (
        <Grow in={true} timeout={600}>
            <div className="Student_Info">
                <p className="Student_Info_p1">Student Information</p>
                <div className="Student_Info_container">
                    <div className="S_Info_header">
                        <div style={{ position: "relative" }}>
                            <input className="Student_Info_Search" placeholder="Search"></input>
                            <SearchRoundedIcon sx={search_sx} />
                        </div>
                        <Button sx={button_filter_sx} onClick={handlefilter}>
                            {filter ? <FilterAltOffOutlinedIcon /> : <FilterAltOutlinedIcon />}
                            <p className="filter_p1">Filter</p>
                        </Button>
                        {menu}
                    </div>
                    <div className="chip-container">
                        {
                            chipData.map((data) => {
                                return (
                                    <Chip
                                        key={data.no}
                                        size="small"
                                        label={data.label}
                                        onDelete={handleDeletechip(data)}
                                    />

                                );
                            })
                        }
                    </div>
                    <TableContainer>
                        <Table>
                            <TableHead>
                                <TableRow sx={{ boxShadow: "box-shadow: rgba(17, 17, 26, 0.1) 0px 1px 0px;" }}>
                                    {columns.map((column) => {
                                        const { id, label, align, minWidth } = column

                                        const ids = id == "No" || id == "Action" || id == "Exam_Status"

                                        return (
                                            <TableCell
                                                key={id}
                                                align={align}
                                                style={{
                                                    minWidth: minWidth,
                                                    backgroundColor: "rgb(67, 160, 71,0.1)",
                                                }}
                                            >
                                                <Button disabled={ids} sx={{   //onClick={sortmenuopen}
                                                    "&:hover": {
                                                        backgroundColor: ids ? '#f0f6ed' : "#345c1814"
                                                    },
                                                }}
                                                    color="success"
                                                >
                                                    <div
                                                        className="table_p1"
                                                        style={{
                                                            justifyContent: align
                                                        }}
                                                    >
                                                        {label}
                                                    </div>
                                                </Button>
                                            </TableCell>
                                        )
                                    }
                                    )}
                                </TableRow>
                            </TableHead>
                            <TableBody >
                                {data.slice(page * rowsPerPage, page * rowsPerPage + rowsPerPage).map((row, index) => {
                                    return (
                                        <TableRow role="checkbox" tabIndex={-1} key={index}
                                            sx={{
                                                '& td, & th': { borderBottom: "1.5px solid rgb(233, 236, 239,0.6)" },
                                                "&:hover": {
                                                    backgroundColor: "rgb(67, 160, 71,0.026)"
                                                }
                                            }}>
                                            {columns.map((column) => {
                                                const value = row[column.id];
                                                return (
                                                    <TableCell key={column.id} align={column.align}>
                                                        <div
                                                            className="table_p2"
                                                            style={{
                                                                fontWeight: column.id === "Student_Name" ?
                                                                    "600" : "400",
                                                            }}
                                                        >{dataperrow(column.id, index, value)}</div>
                                                    </TableCell>
                                                );
                                            })}
                                        </TableRow>
                                    );
                                })}
                            </TableBody>
                        </Table>
                    </TableContainer>
                    <TablePagination
                        rowsPerPageOptions={[5, 10, 25]}
                        component="div"
                        count={data.length}
                        rowsPerPage={rowsPerPage}
                        page={page}
                        onPageChange={handleChangePage}
                        onRowsPerPageChange={handleChangeRowsPerPage}
                    />
                </div>
                {/* <button tton onClick={() => window.scrollTo(0, 0)}>top</button> */}

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
                                    <p>Date Created: 01/01/2001</p>
                                    LRN:
                                    <span style={{ color: '#1e6091', marginLeft: '5px' }}>123456789012</span>
                                </div>
                                <div className="dialog_body_alert">
                                    <p>Active</p>
                                </div>
                            </div>
                            <div className="dialog_body">
                                {
                                    field.map((val) => (
                                        <div key={val.id} className={val.id}>
                                            <p className="dialog_body_p2">{val.label}</p>
                                            <input type="text" value={val.value} placeholder={val.label} className="dialog_body_input" disabled />
                                        </div>
                                    ))
                                }
                            </div>
                        </div>
                        <DialogActions>
                            <Button sx={button_sx} onClick={handleClose}>Close</Button>
                        </DialogActions>
                    </DialogContent>
                </Dialog>
            </div>
        </Grow >
    );
}
