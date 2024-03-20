google.charts.load('current', { 'packages': ['corechart'] });

google.charts.setOnLoadCallback(drawChart);

function drawChart() {
    var data = google.visualization.arrayToDataTable([
        ['Element', 'Density'],
        ['Copper', 8.94],
        ['Silver', 10.49],
        ['Gold', 19.30],
        ['Platinum', 21.45],
        ['Copper', 8.94],
        ['Silver', 10.49],
        ['Gold', 19.30],
        ['Platinum', 21.45],
        ['Copper', 8.94],
        ['Silver', 10.49],
        ['Gold', 19.30],
        ['Platinum', 21.45],
        ['Copper', 8.94],
        ['Silver', 10.49],
        ['Gold', 19.30],
        ['Platinum', 21.45],
        ['Copper', 8.94],
        ['Silver', 10.49],
        ['Gold', 19.30],
        ['Platinum', 21.45]
    ]);

    var options = {
        'title': '카테고리별 펀딩금 비율',
        'width': 427,
        'height': 373
    };

    var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
    chart.draw(data, options);
}