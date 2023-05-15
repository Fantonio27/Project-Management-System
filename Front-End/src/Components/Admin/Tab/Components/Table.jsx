import "../../../../css/Admin/Form/Table.css"
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
import Select from '@mui/material/Select';
import Checkbox from '@mui/material/Checkbox';
import MenuItem from '@mui/material/MenuItem';
import FilterListRoundedIcon from '@mui/icons-material/FilterListRounded';
import axios from "axios";

const search_sx = {
    position: "absolute",
    left: 10,
    top: 12,
    color: "#252a3578",
    fontSize: "24px"
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


export default function Data_Table(props) {

    const [page, setPage] = useState(0);    //page
    const [rowsPerPage, setRowsPerPage] = useState(5);

    const handleChangePage = (event, newPage) => {
        setPage(newPage);
    };

    const handleChangeRowsPerPage = (event) => {
        setRowsPerPage(+event.target.value);
        setPage(0);
    };


    const [expanded, setExpanded] = useState(); //for the filter


    const [FilterData, setFilterData] = useState({
        Sortby: '',
        Column: '',
        LRN: '',
        Email: '',
        ExamStatus: '',
        Date: ''
    })

    const [chipData, setChipData] = useState([])

    const handleDeletechip = (chipToDelete) => () => {
        setChipData((chips) => chips.filter((chip) => chip.no !== chipToDelete.no));
    };

    const handlefilter = (event) => {
        setanchorsort(event.currentTarget);
    }

    const [anchorsort, setanchorsort] = useState(null);
    const sortmenu = Boolean(anchorsort)  //for sort menu

    useEffect(() => {
        setExpanded(prev => -1)
    }, [sortmenu])

    const [tableatt, settableatt] = React.useState({
        tablename : '',
        search : '',
        value : '',
    })

    useEffect(() => {
        tablename(props.Name)

        if(tableatt.value !== ""){
            axios.get(`http://localhost/recommendation_system/api/admin/search.php?`, tableatt).then(function (response) {
                console.log(response.data)
            })
        }
        
    }, [tableatt.value])

    console.log(tableatt)
    const sortmenuclose = () => {
        setanchorsort(null);
    };

    // const filtertabs = [
    //     {
    //         id: "Sortby", label: "Sort by", icon: <ImportExportRoundedIcon />,
    //         sub: [
    //             {
    //                 idlabel: "Column", sublabel: "Column", list: [
    //                     { item: "Student Name" },
    //                     { item: "LRN" },
    //                     { item: "Email Address" },
    //                 ]
    //             },
    //             { idlabel: "Sortby", sublabel: "Ascending", list: [{ item: "Descending" }] }
    //         ],
    //     },
    //     {
    //         id: "LRN", label: "LRN", icon: <ArticleOutlinedIcon />,
    //         sub: [
    //             {
    //                 idlabel: "LRN", sublabel: "LRN"
    //             }
    //         ],
    //     },
    //     {
    //         id: "EmailAddress", label: "Email Address", icon: <EmailOutlinedIcon />,
    //         sub: [
    //             {
    //                 idlabel: "Email", sublabel: "Email Address"
    //             }
    //         ],
    //     },
    //     {
    //         id: "ExamStatus", label: "Exam Status", icon: <DescriptionOutlinedIcon />,
    //         sub: [
    //             {
    //                 idlabel: "ExamTaken", sublabel: "Exam Taken"
    //             },
    //             {
    //                 idlabel: "ExamNotTaken", sublabel: "Exam Not Taken"
    //             }
    //         ],
    //     },
    //     {
    //         id: "Date", label: "Date", icon: <CalendarMonthOutlinedIcon />,
    //         sub: [
    //             {
    //                 idlabel: "Min", sublabel: "Date"
    //             },
    //             {
    //                 idlabel: "Max", sublabel: "Date"
    //             },
    //         ],
    //     }
    // ]

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
        } else if (sublabel == "Exam Taken" || sublabel == "Exam Not Taken") {
            return (
                <>
                    <Checkbox sx={{ color: "#697280d3" }} name={idlabel} /><p className="filter_p3">{sublabel}</p>
                </>
            )
        } else {
            return (
                <><input name={idlabel} placeholder={sublabel} className="filter_input" /></>
            )
        }
    }

    const tablename = (a) => {
        let na = ''
        let sea = ''
        if(a == "Student Information"){
            na = "student_information"
            sea = "LRN"
        }
        
        settableatt(prev=> ({
            ...prev,
            tablename : na,
            search : sea,
        }))
    }

    const onChangesearch = (event) => {
        const {value, name} = event.target
        const number = /^[0-9]+$/

        if(number.test(value)|| value.length === 0){
            settableatt(prev=> ({
                ...prev,
                [name] : value
            }))
        }
    }
    return (
        <Grow in={true} timeout={600}>
            <div className="Student_Info">
                {props.Title}
                <div className="Student_Info_container">
                    <div className="S_Info_header">
                        <div style={{ position: "relative" }}>
                            <input className="Student_Info_Search" 
                            name="value"
                            placeholder={`Search for ${tableatt.search}`} 
                            value={tableatt.value||""}
                            onChange={onChangesearch}></input>
                            <SearchRoundedIcon sx={search_sx} />
                        </div>
                        {/* <IconButton onClick={handlefilter}>
                            <FilterListRoundedIcon/>
                        </IconButton> */}
                        {/* {menu} */}
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
                                    {props.Column.map((column) => {
                                        const { id, label, align, minWidth } = column

                                        return (
                                            <TableCell
                                                key={id}
                                                align={align}
                                                style={{
                                                    minWidth: minWidth,
                                                    backgroundColor: "rgb(67, 160, 71,0.1)",
                                                }}
                                            >
                                                <div
                                                    className="table_p1"
                                                    style={{
                                                        justifyContent: align
                                                    }}
                                                >
                                                    {label}
                                                </div>

                                            </TableCell>
                                        )
                                    }
                                    )}

                                </TableRow>
                            </TableHead>
                            <TableBody >
                                {props.Row.slice(page * rowsPerPage, page * rowsPerPage + rowsPerPage).map((row, index) => {
                                    return (
                                        <TableRow role="checkbox" tabIndex={-1} key={index}
                                            sx={{
                                                '& td, & th': { borderBottom: "1.5px solid rgb(233, 236, 239,0.6)" },
                                                "&:hover": {
                                                    backgroundColor: "rgb(67, 160, 71,0.026)"
                                                }
                                            }}>
                                            {props.Column.map((column) => {
                                                const value = row[column.id];
                                                return (
                                                    <TableCell key={column.id} align={column.align}>
                                                        <div
                                                            className="table_p2"
                                                            style={{
                                                                fontWeight: column.id === "Student_Name" ?
                                                                    "600" : "400",
                                                            }}
                                                        >{props.Function(column.id, index, value, row)}</div>
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
                        count={props.Row.length}
                        rowsPerPage={rowsPerPage}
                        page={page}
                        onPageChange={handleChangePage}
                        onRowsPerPageChange={handleChangeRowsPerPage}
                    />
                </div>
                {/* <button tton onClick={() => window.scrollTo(0, 0)}>top</button> */}
                {props.Dialog}
            </div>
        </Grow >
    );
}
