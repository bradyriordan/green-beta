$(document).ready(function () {


    var ctx = document.getElementById('myChart').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: [
                '2010', "", "", "", "", "", "", "", "", "", "", "", "", "", 
                '2011', "", "", "", "", "", "", "", "", "", "", "", "", "", 
                '2012', "", "", "", "", "", "", "", "", "", "", "", "", "",  
                '2013', "", "", "", "", "", "", "", "", "", "", "", "", "", 
                '2014', "", "", "", "", "", "", "", "", "", "", "", "", "", 
                '2015', "", "", "", "", "", "", "", "", "", "", "", "", "", 
                '2016', "", "", "", "", "", "", "", "", "", "", "", "", "", 
                '2017'],
            datasets: [{ 
                lineTension: 0,
                label: 'Green index returns',
                data: [
                    1.38682,
                    0.23149,
                    -0.59411,
                    -1.11146,
                    -1.4157,
                    0.42245,
                    -0.95794,
                    -3.64719,
                    -1.05943,
                    -1.13047,
                    -3.89272,
                    -5.6856,
                    -4.35634,
                    -6.62819,
                    -6.72688,
                    -4.59888,
                    -3.54099,
                    -3.13781,
                    -6.04123,
                    -6.79412,
                    -3.88567,
                    -7.67354,
                    -8.30003,
                    -8.39359,
                    -9.79184,
                    -8.89237,
                    -4.18921,
                    -5.51432,
                    -4.82338,
                    -4.4211,
                    -6.25947,
                    -4.47018,
                    -5.54963,
                    -6.01816,
                    -2.87862,
                    -3.71563,
                    -1.24974,
                    -0.3378,
                    1.15639,
                    3.97543,
                    6.25846,
                    8.06949,
                    8.50374,
                    7.78025,
                    9.70782,
                    9.2401,
                    11.53336,
                    11.55669,
                    11.88211,
                    12.21312,
                    10.90197,
                    10.35555,
                    10.86969,
                    8.80122,
                    8.57175,
                    8.4155,
                    12.39775,
                    13.37947,
                    18.65067,
                    18.29448,
                    19.10273,
                    19.49971,
                    21.72073,
                    18.05277,
                    20.91509,
                    22.57206,
                    26.95241,
                    27.17504,
                    28.3626,
                    28.36453,
                    30.71396,
                    32.71504,
                    32.16109,
                    29.14899,
                    27.20212,
                    23,
                    25.61767,
                    23.01112,
                    23.79657,
                    24.62327,
                    23.77386,
                    22.92431,
                    20.02257,
                    20.87275,
                    16.6513,
                    17.99473,
                    19.85798,
                    21.7034,
                    23.44994,
                    22.3831,
                    21.92774,
                    21.52798,
                    21.68506,
                    23.05201,
                    22.01889,
                    21.09052,
                    21.54859,
                    21.88189,
                    20.63525,
                    19.36682,
                    19.25289,
                    18.79962,
                    19.91657,
                    22.25217,
                    22.53323,
                    23.12785,
                    22.83297,
                    21.14713
                ],
                fill: false,
                borderColor: [
                    '#30c0a3'

                ],
                borderWidth: 2
            }            
            ]
        },
        options: {
            bezierCurve: false,            
            scales: { 
                xAxes: [{                                       
                    ticks: {
                        callback: function(tick, index, array) {
                            if (index % 14 == 0 ){                                
                                return tick
                            }                           
                        }
                    }
                }],
                yAxes: [{
                    scaleLabel: {
                        labelString: "% Return",
                        display: true
                    }, 
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });

});