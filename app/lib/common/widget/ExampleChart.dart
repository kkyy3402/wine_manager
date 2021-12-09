
import 'package:flutter/cupertino.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class _SalesData {
  _SalesData(this.year, this.sales);
  String year;
  int sales;
}

class ExampleChart extends StatelessWidget {

  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40)
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SfSparkLineChart.custom(
      trackball: SparkChartTrackball(
          activationMode: SparkChartActivationMode.longPress),

      marker: SparkChartMarker(
          displayMode: SparkChartMarkerDisplayMode.high),
      //Enable data label
      labelDisplayMode: SparkChartLabelDisplayMode.all,
      labelStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold
      ),
      xValueMapper: (int index) => data[index].year,
      yValueMapper: (int index) => data[index].sales,
      dataCount: 5,
    );
  }



}