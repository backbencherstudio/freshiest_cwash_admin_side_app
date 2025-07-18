import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarWashChart extends StatelessWidget {
  const CarWashChart({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: 300,
      padding:  EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: Color(0xffF9F9F9),
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Car Wash",
            style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w700),
          ),
          Expanded(
            child: BarChart(
              curve: Curves.linear,
              duration: Duration(seconds: 1),

              BarChartData(
                barGroups: _buildBarGroups(),
                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 32.w,
                      getTitlesWidget: (value, meta) {
                        final labels = [
                          '10k',
                          '20k',
                          '30k',
                          '40k',
                          '50k',
                          '60k',
                          '70k',
                          '80k',
                        ];
                        if (value.toInt() >= 0 &&
                            value.toInt() < labels.length) {
                          return Text(labels[value.toInt()]);
                        }
                        return const Text('');
                      },
                    ),
                  ),
                ),

                gridData: FlGridData(
                  show: true,
                  drawHorizontalLine: true,
                  drawVerticalLine: false,
                  horizontalInterval: 2,
                  getDrawingHorizontalLine: (value) => FlLine(
                    color: Colors.grey.withValues(alpha: 0.3),
                    strokeWidth: 1,
                  ),
                ),
                borderData: FlBorderData(show: false),
                barTouchData: BarTouchData(enabled: false),
                // maxY: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<BarChartGroupData> _buildBarGroups() {
    final blueBars = [5, 0, 4, 0, 6, 0, 5, 0];
    final greenBars = [0, 7, 0, 7, 0, 9, 0, 12];

    return List.generate(8, (index) {
      return BarChartGroupData(
        x: index,
        barRods: [
          if (blueBars[index] != 0)
            BarChartRodData(
              toY: blueBars[index].toDouble(),
              color: Colors.blue,
              borderRadius: BorderRadius.circular(0),
              width: 12.w,
            ),
          if (greenBars[index] != 0)
            BarChartRodData(
              toY: greenBars[index].toDouble(),
              color: Colors.green,
              borderRadius: BorderRadius.circular(0),
              width: 12.w,
            ),
        ],
        barsSpace: 4,
      );
    });
  }
}
