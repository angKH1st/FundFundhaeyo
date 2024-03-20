google.charts.load('current', { 'packages': ['corechart'] });
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
    var data = new google.visualization.DataTable();
    data.addColumn('string', 'Category');
    data.addColumn('number', 'Funding');

    var pjNames = document.getElementsByClassName('pjName');
    var pjFundings = document.getElementsByClassName('pjFunding');

    for (var i = 0; i < pjNames.length; i++) {
        var name = pjNames[i].value;
        var funding = parseFloat(pjFundings[i].value);
        if (!isNaN(funding)) {
            data.addRow([name, funding]);
        }
    }

    var options = {
        title: '카테고리별 펀딩금 비율',
        width: 427,
        height: 373
    };

    var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
    chart.draw(data, options);
}