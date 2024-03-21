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
        height: 373,
        colors: ['#8e44ad', '#3498db', '#e74c3c', '#16a085', '#f39c12', '#d35400', '#2c3e50', '#7f8c8d'],
        // 타이틀 스타일 조정
        titleTextStyle: {
            color: '#2c3e50',
            fontSize: 18,
            bold: true
        },
        // 범례 스타일 조정
        legend: {
            position: 'right',
            alignment: 'center',
            textStyle: {
                color: '#34495e',
                fontName: 'Roboto',
                fontSize: 14
            }
        },
        // 차트 배경색 및 영역 배경색 조정
        backgroundColor: { fill:'transparent' },
        chartArea: {
            backgroundColor: 'transparent',
            left: 50,
            top: 70,
            width: '100%',
            height: '80%'
        },
        // 도넛 차트 스타일 조정
        pieHole: 0.4,
        pieSliceBorderColor: 'transparent',
        pieSliceTextStyle: {
            color: '#fff',
            fontName: 'Roboto',
            fontSize: 16
        },
    };

    var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
    chart.draw(data, options);
}

function moveAllMemberList(){
	location.href="/fund/admSelect.me";
}

function moveAllProjectList(){
	location.href="/fund/admSelect.pr";
}

function moveTestProjectList(){
	location.href="/fund/admMoveToUpdateList.pr";
}
