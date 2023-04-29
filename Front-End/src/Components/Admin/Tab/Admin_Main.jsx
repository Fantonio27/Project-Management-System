import "../../../css/Admin/Main.css"
import PeopleAltRoundedIcon from '@mui/icons-material/PeopleAltRounded';
import Table from '@mui/material/Table';
import TableBody from '@mui/material/TableBody';
import TableCell from '@mui/material/TableCell';
import TableContainer from '@mui/material/TableContainer';
import TableHead from '@mui/material/TableHead';
import TableRow from '@mui/material/TableRow';
import ArrowForwardRoundedIcon from '@mui/icons-material/ArrowForwardRounded';
import { Doughnut } from 'react-chartjs-2';

export default function Admin_Main() {

    const group = [
        {
            Title: "Total Users",
            Number: "100",
            Text: "HELLO",
            Icon: "",
            Color: "",
        },
        {
            Title: "Total Users",
            Number: "100",
            Text: "HELLO",
            Icon: "",
            Color: "",
        },
        {
            Title: "Total Users",
            Number: "100",
            Text: "HELLO",
            Icon: "",
            Color: "",
        },
        {
            Title: "Total Users",
            Number: "100",
            Text: "HELLO",
            Icon: "",
            Color: "",
        },
    ]

    const icon_sx = {
        color: "white",
        position: "absolute",
        backgroundColor: "red",
        padding: "15px",
        borderRadius: "100px",
        display: "flex",
        alignItems: "center",
        justifyContent: "center",
        right: 0,
    }

    function createData(name, calories, fat, carbs, protein) {
        return { name, calories, fat, carbs, protein };
    }

    const rows = [
        createData('Frozen yoghurt', 159, 6.0, 24, 4.0),
        createData('Ice cream sandwich', 237, 9.0, 37, 4.3),
        createData('Eclair', 262, 16.0, 24, 6.0),
        createData('Cupcake', 305, 3.7, 67, 4.3),
        createData('Gingerbread', 356, 16.0, 49, 3.9),
    ];

    const data = {
        datasets: [{
            data: [10, 90],
        }],

        labels: [
            'Result1',
            'Result2',
        ],
    };

    const option = {
        animation: {
            duration: 1500,
        },
        cutout: 80,
        // borderWidth: 0,'
        plugins: {
            legend: {
                position: "bottom",
                labels: {
                    padding: 30
                }
            }
        }
    }
    return (
        <div className="Admin_Main">
            <div className="A_Main_GroupBox">
                {
                    group.map((e, index) => (
                        <div key={index} className="A_Main_Container">
                            <div className="A_Main_Box">
                                <PeopleAltRoundedIcon sx={icon_sx} />
                                <p className="A_Main_p1">{e.Title}</p>
                                <p className="A_Main_p2">{e.Number}</p>
                                <p className="A_Main_p1">{e.Text}</p>
                            </div>
                        </div>
                    ))
                }
            </div>
            <div className="A_Main_Diagrams">
                <div className="A_Main_Table">
                    <p className="A_Main_Table_p1">Latest Users</p>
                    <TableContainer>
                        <Table sx={{ boxShadow: 0 , maxwidth: "120px"}}>
                            <TableHead sx={{ backgroundColor: "rgb(67, 160, 71,0.1)" }}>
                                <TableRow sx={{ '& td, & th': { borderBottom: "1.5px solid rgb(233, 236, 239,0)" } }}>
                                    <TableCell>Dessert (100g serving)</TableCell>
                                    <TableCell align="right">Calories</TableCell>
                                    <TableCell align="right">Fat&nbsp;(g)</TableCell>
                                    <TableCell align="right">Carbs&nbsp;(g)</TableCell>
                                    <TableCell align="right">Protein&nbsp;(g)</TableCell>
                                </TableRow>
                            </TableHead>
                            <TableBody>
                                {rows.map((row) => (
                                    <TableRow
                                        key={row.name}
                                        sx={{
                                            '& td, & th': { borderBottom: "1.5px solid rgb(233, 236, 239,0.6)" },
                                            "&:hover": {
                                                backgroundColor: "rgb(67, 160, 71,0.04)"
                                            }
                                        }}
                                    >
                                        <TableCell component="th" scope="row" >
                                            {row.name}
                                        </TableCell>
                                        <TableCell align="right">{row.calories}</TableCell>
                                        <TableCell align="right">{row.fat}</TableCell>
                                        <TableCell align="right">{row.carbs}</TableCell>
                                        <TableCell align="right">{row.protein}</TableCell>
                                    </TableRow>
                                ))}
                            </TableBody>
                        </Table>
                    </TableContainer>
                    <div style={{ display: 'flex', justifyContent: "flex-end" }}>
                        <div className="A_Main_Table_button">
                            <p>View all</p>
                            <ArrowForwardRoundedIcon sx={{ color: "#6f727e", fontSize: "20px" }} />
                        </div>
                    </div>
                </div>
                <div className="A_Main_Chart">
                    <p className="A_Main_Chart_p1">Students Result</p>
                    <div className="A_Main_Chart_box">
                        <div>
                            <Doughnut data={data} options={option} />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    )
}