import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BuildPieChart extends StatelessWidget {
  final List<Color> sectionsColor;
  const BuildPieChart({super.key, required this.sectionsColor});

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        centerSpaceRadius: 40,
        sections: showingSections(sectionsColor: sectionsColor),
        borderData: FlBorderData(show: false),
        sectionsSpace: 2,
      ),
    );
  }
}

List<PieChartSectionData> showingSections({
  required List<Color> sectionsColor,
}) {
  return sectionsColor
      .map(
        (color) => PieChartSectionData(
          color: color,
          value: 30,
          showTitle: false,
          radius: 10,
        ),
      )
      .toList();
  //   [
  //   PieChartSectionData(
  //     color: Colors.transparent,
  //     value: 30,
  //     showTitle: false,
  //     radius: 10,
  //   ),
  //   PieChartSectionData(
  //     color: Colors.red,
  //     value: 45,
  //     showTitle: false,
  //     radius: 10,
  //   ),
  //
  //   PieChartSectionData(
  //     color: Colors.green,
  //     value: 45,
  //     showTitle: false,
  //     radius: 10,
  //   ),
  //
  //   PieChartSectionData(
  //     color: Colors.blue,
  //     value: 30,
  //     showTitle: false,
  //     radius: 10,
  //   ),
  // ];
}
