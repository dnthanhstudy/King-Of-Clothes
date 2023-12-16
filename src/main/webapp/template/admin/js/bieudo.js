Highcharts.chart('container', {

    title: {
        text: 'Biểu đồ thống kê danh sách sản phẩm bán chạy',
        align: 'center'
    },

    subtitle: {
        text: 'Dựa vào biểu đồ có thể biết được sản phẩm nào đang theo trend',
        align: 'center'
    },

    yAxis: {
        title: {
            text: 'Số lượt mua theo thời gian'
        }
    },

    xAxis: {
        accessibility: {
            rangeDescription: 'Range: 2010 to 2020'
        }
    },
    //
    // legend: {
    //     layout: 'vertical',
    //     align: 'right',
    //     verticalAlign: 'middle'
    // },

    plotOptions: {
        series: {
            label: {
                connectorAllowed: false
            },
            pointStart: 2010
        }
    },

    series: [{
        name: 'Áo thun tay lỡ thoáng mát và mềm mịn đi học ,đi chơi',
        data: [43934, 48656, 65165, 81827, 112143, 142383,
            171533, 165174, 155157, 161454, 154610]
    }, {
        name: 'Áo thun dài tay - Áo longsleeve chất cotton in chữ TO-BANYI mặc thoáng,',
        data: [24916, 37941, 29742, 29851, 32490, 30282,
            38121, 36885, 33726, 34243, 31050]
    }, {
        name: 'Áo Giữ Nhiệt Nam Dài Tay Cao Cấp VESCA N',
        data: [11744, 30000, 16005, 19771, 20185, 24377,
            32147, 30912, 29243, 29213, 25663]
    }, {
        name: 'Other',
        data: [21908, 5548, 8105, 11248, 8989, 11816, 18274,
            17300, 13053, 11906, 10073]
    }],

    responsive: {
        rules: [{
            condition: {
                maxWidth: 500
            },
            chartOptions: {
                legend: {
                    layout: 'horizontal',
                    align: 'center',
                    verticalAlign: 'bottom'
                }
            }
        }]
    }

});
