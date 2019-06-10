$(document).ready(function () {


    var ctx = document.getElementById('myChart').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: ['2010', '2011', '2012', '2013', '2014', '2015', '2016', '2017'],
            datasets: [{
                label: 'High carbon risk',
                data: [0, 0.1, 0.3, 0.1, 0, -0.3, -0.4, -0.6],
                fill: false,
                borderColor: [
                    'rgba(255, 99, 132, 1)'

                ],
                borderWidth: 2
            },
            {
                label: 'Low carbon risk',
                data: [0, 0.3, 0.4, 0.5, 0.6, 0.8, 1, 1.2,],
                fill: false,
                borderColor: [
                    'rgba(32, 99, 132, 1)'
                ],
                borderWidth: 2
            }
            ]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });

});