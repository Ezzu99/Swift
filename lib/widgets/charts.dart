import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class PartMarks {
  double obtained;
  double total;
  double weightage;

  PartMarks(dynamic obtained, dynamic total, dynamic weightage) {
    if (obtained != null) this.obtained = obtained is! double ? obtained.toDouble() : obtained;
    if (total != null) this.total = total is! double ? total.toDouble() : total;
    if (weightage != null) this.weightage = weightage is! double ? weightage.toDouble() : weightage;
  }
}

class Chart extends StatelessWidget {
  // final Map<String, double> marksMap = new Map();
  final Map<String, dynamic> courseData;
  
  Chart(this.courseData);

  bool isSkippable(dynamic value) {
    return value == null || value.isEmpty;
  }

  double calcWeightage(PartMarks partialMarks) {
    if (partialMarks.obtained <= 0 || partialMarks.total <= 0) return 0;

    return (partialMarks.obtained / partialMarks.total) * partialMarks.weightage;
  }

  double toPrecision(double value, int n) => double.parse(value.toStringAsFixed(n));

  bool isNumber(dynamic value) => (value is int || value is double) && value != null;

  Map<String, double> courseComposition() {
    Map<String, double> composition = new Map();

    this.courseData.forEach((key, value) {
      if (isSkippable(value)) return;

      value.forEach((k, v) {
        if (isSkippable(v) || (k is String && k == "Total")) return;
        if (!isNumber(v['obtained']) || !isNumber(v['total']) || !isNumber(v['weightage'])) return;
        v = PartMarks(v['obtained'], v['total'], v['weightage']);

        composition.update(key, (prevValue) => toPrecision(prevValue + calcWeightage(v), 2), ifAbsent: () => toPrecision(calcWeightage(v), 2));
      });
    });

    if (composition.isEmpty) composition.putIfAbsent("Grand Total", () => 1);

    return composition;
  }

  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: courseComposition(),
      animationDuration: Duration(milliseconds: 1000),
      chartLegendSpacing: 32.0,
      chartRadius: MediaQuery.of(context).size.width / 2.7,
      showChartValuesInPercentage: true,
      showChartValues: true,
      showChartValuesOutside: false,
      chartValueBackgroundColor: Colors.white,
      // colorList: colorList,
      showLegends: true,
      legendPosition: LegendPosition.right,
      decimalPlaces: 1,
      showChartValueLabel: true,
      initialAngle: 0,
      chartValueStyle: defaultChartValueStyle.copyWith(
        color: Colors.blueGrey[900].withOpacity(0.9),
      ),
      chartType: ChartType.disc,
    );
  }
}
