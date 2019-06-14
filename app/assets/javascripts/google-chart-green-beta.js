google.charts.load('current', {
    'packages': ['geochart'],
    // Note: you will need to get a mapsApiKey for your project.
    // See: https://developers.google.com/chart/interactive/docs/basic_load_libs#load-settings
    'mapsApiKey': 'AIzaSyDbXc0ck6qG3DXm2Yk2qH4T9NmNf6U9yNg'
});
google.charts.setOnLoadCallback(drawRegionsMap);

function drawRegionsMap() {
    var data = google.visualization.arrayToDataTable([
        ["Country", "Carbon Beta"],
        ["United Arab Emirates",(-0.041801940093476 * -1)],
        ["China",(0.31329749905504 * -1)],
        ["United States",(0.35143036524023 * -1)],
        ["Netherlands",(-0.500889665272323 * -1)],
        ["Israel",(-0.0986273362093582 * -1)],
        ["Argentina",(0.163273169975385 * -1)],
        ["Brazil",(0.396996392024467 * -1)],
        ["Austria",(-0.434570690263326 * -1)],
        ["Russia",(0.341908598371674 * -1)],
        ["Australia",(0.236154703680521 * -1)],
        ["Hong Kong",(0.101289682380457 * -1)],
        ["New Zealand",(0.11609910521246 * -1)],
        ["Singapore",(0.0819377484070795 * -1)],
        ["United Kingdom",(-0.15483640946815 * -1)],
        ["Kenya",(0.00876907547928766 * -1)],
        ["Malaysia",(0.106708390031861 * -1)],
        ["Poland",(-0.319729507242697 * -1)],               
        ["Bangladesh",(-0.090588460170617 * -1)],
        ["Belgium",(-0.473113839908674 * -1)],
        ["Switzerland",(-0.384046147041788 * -1)],
        ["France",(-0.497352061418877 * -1)],
        ["Bulgaria",(-0.254970905021949 * -1)],
        ["Bahrain",(-0.032575030774904 * -1)],       
        ["Indonesia",(0.160637948300672 * -1)],
        ["Mauritius",(0.12913715717758 * -1)],        
        ["Italy",(-0.661836382643017 * -1)],
        ["Thailand",(0.191821718818881 * -1)],
        ["Norway",(-0.144789812499804 * -1)],
        ["Canada",(0.372536665725754 * -1)],         
        ["Taiwan",(0.0954628211982474 * -1)],
        ["Germany",(-0.428882300321157 * -1)],
        ["Peru",(0.109601910377829 * -1)],       
        ["India",(0.15629674328618 * -1)],
        ["Japan",(-0.412535626064413 * -1)],  
        ["Ghana",(0.946298107798947 * -1)],
        ["Vietnam",(-0.0392915751030419 * -1)],
        ["Philippines",(0.0743179253491923 * -1)],
        ["Romania",(-0.384725737677516 * -1)],
        ["Morocco",(-0.264643427946282 * -1)],
        ["Greece",(-0.306106597249176 * -1)],
        ["Pakistan",(-0.000891881220674218 * -1)],
        ["Turkey",(0.025622306973826 * -1)],
        ["Chile",(0.191308542269219 * -1)],
        ["Mexico",(0.276164408501004 * -1)],
        ["Ukraine",(-0.106820652236638 * -1)],        
        ["Ireland",(-0.320673249902313 * -1)],
        ["Colombia",(0.247727425319245 * -1)],        
        ["Egypt",(0.141994589687179 * -1)],        
        ["Cyprus",(-0.248363249183394 * -1)],
        ["Denmark",(-0.411804269393998 * -1)],
        ["Greenland",(-0.419287326080459 * -1)],        
        ["Spain",(-0.591777425221291 * -1)],
        ["Finland",(-0.501302813489799 * -1)],        
        ["Gabon",(-0.337467300572566 * -1)],        
        ["South Korea",(0.0517574773069394 * -1)],
        ["Croatia",(-0.284526361701325 * -1)],
        ["Hungary",(-0.347048106917535 * -1)],
        ["Nigeria",(-0.0598547672633272 * -1)],        
        ["Jamaica",(-0.0407606954454798 * -1)],
        ["Jordan",(-0.0352993679862136 * -1)],
        ["Kuwait",(-0.0687388310333028 * -1)],        
        ["Sri Lanka",(0.0679568040081328 * -1)],
        ["Lithuania",(-0.402400017592908 * -1)],        
        ["Oman",(-0.0204639951337952 * -1)],       
        ["Portugal",(-0.496040798624745 * -1)],
        ["Qatar",(-0.0525643718421909 * -1)],       
        ["Saudi Arabia",(0.0769611399098315 * -1)],        
        ["Sweden",(-0.364536861779829 * -1)],
        ["Slovenia",(-0.324659010305341 * -1)],       
        ["Tunisia",(-0.209085443651191 * -1)]

    ]);

    var options = {
        colorAxis: { colors: ['#c2b0a2', '#c9c0b9', '#d3f5bc', '#bdfd92'] }
    };

    var chart = new google.visualization.GeoChart(document.getElementById('regions_div'));

    chart.draw(data, options);
}