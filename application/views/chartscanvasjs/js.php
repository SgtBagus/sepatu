<!-- kolom -->
<script type="text/javascript">

$(function () {
    var chart = new CanvasJS.Chart("chartContainer-1", {
        theme: "light2",
        animationEnabled: true,
        title: {
            text: "Column Chart in PHP using CanvasJS"
        },
        data: [
        {
            type: "column",                
            dataPoints: <?php echo json_encode($dataPoints, JSON_NUMERIC_CHECK); ?>
        }
        ]
    });
    chart.render();
});
</script>
<!-- area -->
<script type="text/javascript">

$(function () {
    var chart = new CanvasJS.Chart("chartContainer-2", {
        theme: "light2",
        animationEnabled: true,
        title: {
            text: "Monthly Downloads",
            fontSize: 25
        },
        axisX: {
            valueFormatString: "MMM",
            interval: 1,
            intervalType: "month"

        },
        axisY: {
            title: "Downloads"
        },

        data: [
        {
            type: "area",
            xValueType: "dateTime",
            dataPoints: <?php echo json_encode($dataPoints1); ?>
        }
        ]
    });

    chart.render();
});
</script>
<!-- bar -->
<script type="text/javascript">

    $(function () {
        var chart = new CanvasJS.Chart("chartContainer-3", {
            title: {
                text: "Olympic Medals of all Times (till 2016 Olympics)"
            },
            subtitles: [
                {
                    text: "Click on Legends to Enable/Disable Data Series"
                }
            ],
            animationEnabled: true,
            legend: {
                cursor: "pointer",
                itemclick: function (e) {
                    if (typeof (e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
                        e.dataSeries.visible = false;
                    }
                    else {
                        e.dataSeries.visible = true;
                    }
                    chart.render();
                }
            },
            axisY: {
                title: "Medals"
            },
            toolTip: {
                shared: true,
                content: function (e) {
                    var str = '';
                    var total = 0;
                    var str3;
                    var str2;
                    for (var i = 0; i < e.entries.length; i++) {
                        var str1 = "<span style= 'color:" + e.entries[i].dataSeries.color + "'> " + e.entries[i].dataSeries.name + "</span>: <strong>" + e.entries[i].dataPoint.y + "</strong> <br/>";
                        total = e.entries[i].dataPoint.y + total;
                        str = str.concat(str1);
                    }
                    str2 = "<span style = 'color:DodgerBlue; '><strong>" + e.entries[0].dataPoint.label + "</strong></span><br/>";
                    str3 = "<span style = 'color:Tomato '>Total: </span><strong>" + total + "</strong><br/>";

                    return (str2.concat(str)).concat(str3);
                }

            },
            data: [
            {
                type: "bar",
                showInLegend: true,
                name: "Gold",
                color: "gold",
                dataPoints: <?php echo json_encode($dataPoints_1, JSON_NUMERIC_CHECK); ?>
            },
            {
                type: "bar",
                showInLegend: true,
                name: "Silver",
                color: "silver",
                dataPoints: <?php echo json_encode($dataPoints_2, JSON_NUMERIC_CHECK); ?>
            },
            {
                type: "bar",
                showInLegend: true,
                name: "Bronze",
                color: "#A57164",
                dataPoints: <?php echo json_encode($dataPoints_3, JSON_NUMERIC_CHECK); ?>
            }

            ]
        });

        chart.render();
    });
</script>

<!-- bubble -->
<script type="text/javascript">

    $(function () {

        var chart = new CanvasJS.Chart("chartContainer-4", {
            zoomEnabled: true,
            animationEnabled: true,
            title: {
                text: "Fertility Rate Vs Life Expectancy in different countries - 2009"
            },
            subtitles: [
                {
                    text: "Try Zooming and Panning"
                }
            ],
            axisX: {
                title: "Life Expectancy",
                maximum: 85
            },
            axisY: {
                title: "Fertility Rate"

            },

            legend: {
                verticalAlign: "bottom",
                horizontalAlign: "left"

            },
            data: [
            {
                type: "bubble",
                legendText: "Size of Bubble Represents Population",
                showInLegend: true,
                legendMarkerType: "circle",
                legendMarkerColor: "grey",
                toolTipContent: "<span style='\"'color: {color};'\"'><strong>{name}</strong></span><br/><strong>Life Exp</strong> {x} yrs<br/> <strong>Fertility Rate</strong> {y}<br/> <strong>Population</strong> {z}mn",

                dataPoints: <?php echo json_encode($dataPoints2, JSON_NUMERIC_CHECK); ?>
            }
            ]
        });

        chart.render();
    });
</script>

<!-- donat -->
<script type="text/javascript">
    $(function () {
        var chart = new CanvasJS.Chart("chartContainer-5", {
            title: {
                text: "Desktop Search Engine Market Share, Jul-2016"
            },
            animationEnabled: true,
            legend: {
                fontSize: 20,
                fontFamily: "Helvetica"
            },
            theme: "light2",
            data: [
            {
                type: "doughnut",
                indexLabelFontFamily: "Garamond",
                indexLabelFontSize: 20,
                indexLabel: "{label} {y}%",
                startAngle: -20,
                showInLegend: true,
                toolTipContent: "{legendText} {y}%",
                dataPoints: <?php echo json_encode($dataPoints3, JSON_NUMERIC_CHECK); ?>
            }
            ]
        });
        chart.render();
    });
</script>

<!-- line -->
<script type="text/javascript">

    $(function () {
        var chart = new CanvasJS.Chart("chartContainer-6", {
            theme: "light2",
            zoomEnabled: true,
            animationEnabled: true,
            title: {
                text: "Line Chart in PHP using CanvasJS"
            },
            subtitles: [
                {
                    text: "Try Zooming and Panning"
                }
            ],
            data: [
            {
                type: "line",

                dataPoints: <?php echo json_encode($dataPoints4, JSON_NUMERIC_CHECK); ?>
            }
            ]
        });
        chart.render();
    });
</script>
<!-- pie -->
<script type="text/javascript">
    $(function () {
        var chart = new CanvasJS.Chart("chartContainer-7", {
            title: {
                text: "Desktop Search Engine Market Share, Jul-2016"
            },
            animationEnabled: true,
            legend: {
                verticalAlign: "center",
                horizontalAlign: "left",
                fontSize: 20,
                fontFamily: "Helvetica"
            },
            theme: "light2",
            data: [
            {
                type: "pie",
                indexLabelFontFamily: "Garamond",
                indexLabelFontSize: 20,
                indexLabel: "{label} {y}%",
                startAngle: -20,
                showInLegend: true,
                toolTipContent: "{legendText} {y}%",
                dataPoints: <?php echo json_encode($dataPoints5, JSON_NUMERIC_CHECK); ?>
            }
            ]
        });
        chart.render();
    });
</script>

<!-- scatter -->
<script type="text/javascript">

    $(function () {
        var chart = new CanvasJS.Chart("chartContainer-8", {
            zoomEnabled: true,
            zoomType: "xy",
            title: {
                text: "Real Estate Rates"
            },
            subtitles: [
                {
                    text: "Try Zooming and Panning"
                }
            ],
            animationEnabled: true,
            axisX: {
                title: "Square Feets"
            },
            axisY: {
                title: "Prices in USD",
                valueFormatString: "$#,##0k",
                lineThickness: 2,
                includeZero: false
            },
            data: [
			{
			    type: "scatter",
			    toolTipContent: "<span style='\"'color: {color};'\"'><strong>Area: </strong></span>{x} sq.ft<br/><span style='\"'color: {color};'\"'><strong>Price: </strong></span>{y} $ ",

			    dataPoints: <?php echo json_encode($dataPoints6, JSON_NUMERIC_CHECK); ?>
			}]
        });

        chart.render();
    });
</script>

<!-- spline -->
<script type="text/javascript">

    $(function () {
        var chart = new CanvasJS.Chart("chartContainer-9", {
            theme: "light2",
            animationEnabled: true,
            title: {
                text: "Analysis of Pepper Export - India"
            },
            axisX: {
                title: "Year"
            },
            axisY: {
                title: "In Tonnes"
            },

            data: [
            {
                type: "spline",
                dataPoints: <?php echo json_encode($dataPoints7, JSON_NUMERIC_CHECK); ?>
            }
            ]
        });

        chart.render();
    });
</script>

<!-- step-area -->
<script type="text/javascript">

    $(function () {
        var chart = new CanvasJS.Chart("chartContainer-10", {

            animationEnabled: true,
            zoomEnabled: true,
            title: {
                text: "Monthly Average Crude Oil Prices"
            },
            legend: {
                verticalAlign: "bottom",
                horizontalAlign: "center"
            },
            axisX: {
                valueFormatString: "MMM YY"
            },
            axisY: {
                includeZero: false,
                prefix: "$",
                title: "Inflation Adjusted Price",
                maximum: 110
            },
            data: [
            {
                type: "stepArea",
                markerSize: 0,
                toolTipContent: "{x} : <strong>${y} <strong>",
                xValueType: "dateTime",
                dataPoints: <?php echo json_encode($dataPoints8, JSON_NUMERIC_CHECK); ?>
            }
            ]
        });
        chart.render();
    });
</script>

