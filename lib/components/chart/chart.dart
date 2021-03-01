import 'package:flutter/cupertino.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SalesData {
  SalesData(this.day, this.value);
  final String day;
  final double value;
}

class SimpleChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      // Initialize category axis
      primaryXAxis: CategoryAxis(),
      legend: Legend(
        isVisible: false,
        isResponsive: true,
      ),
      series: <LineSeries<SalesData, String>>[
        LineSeries<SalesData, String>(
          // Bind data source
          dataSource: <SalesData>[
            SalesData('01/01', 1),
            SalesData('02/01', 5),
            SalesData('03/01', 3),
            SalesData('04/01', 3),
            SalesData('05/01', 4),
            SalesData('06/01', 1),
            SalesData('07/01', 5),
            SalesData('08/01', 3),
            SalesData('09/01', 3),
            SalesData('10/01', 4),
            SalesData('11/01', 1),
            SalesData('12/01', 5),
            SalesData('13/01', 3),
            SalesData('14/01', 3),
            SalesData('15/01', 4),
            SalesData('16/01', 1),
            SalesData('17/01', 5),
            SalesData('18/01', 3),
            SalesData('19/01', 3),
            SalesData('20/01', 4),
          ],
          xValueMapper: (SalesData sales, _) => sales.day,
          yValueMapper: (SalesData sales, _) => sales.value,
          name: 'Votre humeur',
        ),
      ],
    );
  }
}
