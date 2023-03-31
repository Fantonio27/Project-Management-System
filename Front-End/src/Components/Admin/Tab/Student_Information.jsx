import "../../../css/Admin/Student_Info.css"
import { useEffect, useState } from 'react';
import Table from '@mui/material/Table';
import TableBody from '@mui/material/TableBody';
import TableCell from '@mui/material/TableCell';
import TableContainer from '@mui/material/TableContainer';
import TableHead from '@mui/material/TableHead';
import TablePagination from '@mui/material/TablePagination';
import TableRow from '@mui/material/TableRow';
import SearchRoundedIcon from '@mui/icons-material/SearchRounded';
import FilterListRoundedIcon from '@mui/icons-material/FilterListRounded';
import { IconButton } from "@mui/material";
import Menu from '@mui/material/Menu';
import MenuItem from '@mui/material/MenuItem';
import EditIcon from '@mui/icons-material/Edit';
import MoreVertIcon from '@mui/icons-material/MoreVert';
import FindInPageIcon from '@mui/icons-material/FindInPage';

const columns = [
    { id: 'No', label: '#', minWidth: 10, align: 'center' },
    { id: 'Student_Name', label: 'Student Name', minWidth: 100 },
    { id: 'LRN', label: 'Learning Reference Number', minWidth: 100, },
    { id: 'Exam_Status', label: 'Exam Status', minWidth: 100 },
    { id: 'Account_Status', label: 'Account Status', minWidth: 20, align: 'center' },
    { id: 'Action', label: '', minWidth: 0 },
];

const data = [
    {
        Student_No: "01",
        Student_Name: "Francis Louie Antonio",
        LRN: "123456789012",
        Exam_Status: "Failed",
        Account_Status: "Active"
    },
    {
        Student_No: "02",
        Student_Name: "Francis Antonio",
        LRN: "123456789012",
        Exam_Status: "Failed",
        Account_Status: "Inactive"
    },
    {
        Student_No: "03",
        Student_Name: "Francis Antonio",
        LRN: "123456789012",
        Exam_Status: "Failed",
        Account_Status: "Active"
    }
]

export default function Student_Info() {

    const [page, setPage] = useState(0);
    const [rowsPerPage, setRowsPerPage] = useState(10);

    const handleChangePage = (event, newPage) => {
        setPage(newPage);
    };

    const handleChangeRowsPerPage = (event) => {
        setRowsPerPage(+event.target.value);
        setPage(0);
    };

    useEffect(() => {
        window.scrollTo(0, 0)
    }, [handleChangeRowsPerPage])

    const search_sx = {
        position: "absolute",
        left: 10,
        top: 12,
        color: "#252a3578",
        fontSize: "24px"
    }

    const [anchorEl, setAnchorEl] = useState(null);
    const open = Boolean(anchorEl);
    const handleClick = (event) => {
        setAnchorEl(event.currentTarget);
    };
    const handleClose = () => {
        setAnchorEl(null);
    };

    const menu_sx = {
        fontSize: "15px",
        display: "flex",
        alignItem: "center",
        justifyContent: "flex-start",
        gap: "10px",
        padding: "5px 20px"
    }

    const option = (
        <div>
            <IconButton onClick={handleClick} >
                <MoreVertIcon />
            </IconButton>
            <Menu
                elevation={0}
                anchorEl={anchorEl}
                open={open}
                onClose={handleClose}
                anchorOrigin={{
                    vertical: 'top',
                    horizontal: 'left',
                }}
                transformOrigin={{
                    vertical: 'top',
                    horizontal: 'right',
                }}
            >
                <div className="Menu_table">
                    <MenuItem onClick={handleClose} sx={menu_sx}>
                        <EditIcon sx={{ fontSize: "18px" }} />
                        <p style={{ color: "#252a35" }}>Edit</p>
                    </MenuItem>
                    <MenuItem onClick={handleClose} sx={menu_sx}>
                        <FindInPageIcon sx={{ fontSize: "18px", color: "rgb(67, 160, 71)" }} />
                        <p style={{ color: "rgb(67, 160, 71)" }}>View</p>
                    </MenuItem>
                </div>
            </Menu>
        </div>
    )

    function dataperrow(a, i, val) {
        if (a === "Action") {
            return (option)
        } else if (a === "Account_Status") {
            if (val === "Active") {
                return (a = val,
                    <p className="Account_Status_p1">Active</p>)
            } else {
                return (
                    <p className="Account_Status_p2">Inactive</p>
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

    // column.id === "Action" ?
    //                                                 option
    //                                                 :
    //                                                 column.id === ""
    //                                                 column.id === "No" ? index + 1 : value
    return (
        <div className="Student_Info">
            <p className="Student_Info_p1">Student Information</p>
            <div className="Student_Info_container">
                <div className="S_Info_header">
                    <div style={{ position: "relative" }}>
                        <input className="Student_Info_Search" placeholder="Search"></input>
                        <SearchRoundedIcon sx={search_sx} />
                    </div>
                    <IconButton sx={{ color: "#252a3598", }}>
                        <FilterListRoundedIcon />
                    </IconButton>
                </div>
                <TableContainer>
                    <Table>
                        <TableHead>
                            <TableRow sx={{ boxShadow: "box-shadow: rgba(17, 17, 26, 0.1) 0px 1px 0px;" }}>
                                {columns.map((column) => (
                                    <TableCell
                                        key={column.id}
                                        align={column.align}
                                        style={{
                                            minWidth: column.minWidth,
                                            backgroundColor: "rgb(67, 160, 71,0.1)",
                                        }}
                                    >
                                        <p className="table_p1" >{column.label}</p>
                                    </TableCell>
                                ))}
                            </TableRow>
                        </TableHead>
                        <TableBody >
                            {data.map((row, index) => {
                                return (
                                    <TableRow role="checkbox" tabIndex={-1} key={row.Student_No}
                                        sx={{
                                            '& td, & th': { borderBottom: "1.5px solid rgb(233, 236, 239,0.6)" },
                                            "&:hover": {
                                                backgroundColor: "rgb(67, 160, 71,0.03)"
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
                    rowsPerPageOptions={[10, 25, 50]}
                    component="div"
                    count={data.length}
                    rowsPerPage={rowsPerPage}
                    page={page}
                    onPageChange={handleChangePage}
                    onRowsPerPageChange={handleChangeRowsPerPage}
                />
            </div>
            {/* <button onClick={() => window.scrollTo(0, 0)}>top</button> */}
        </div>
    );
}
// export default function Student_Info(){
//     return(
        // <div className="Student_Info">
        //     <p className="Student_Info_p1">Student Information</p>
        //     <div className="Student_Info_container">
        //         dvv
        //     </div>
        // </div>
//     )
// }