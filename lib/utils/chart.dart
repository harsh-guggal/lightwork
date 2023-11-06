import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:lightwork/utils/brand_colors.dart';

class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  // gradient used to build chart flow
  List<Color> gradientColors = [
    BrandColors.primaryColor,
    BrandColors.primaryColor1,
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 3,
          child: Padding(
            padding: const EdgeInsets.only(
              right: 18,
              left: 12,
              top: 4,
              bottom: 12,
            ),
            child: LineChart(
              mainData(),
            ),
          ),
        ),
      ],
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: const FlGridData(
        show: false,
        drawVerticalLine: false,
        horizontalInterval: 1,
        verticalInterval: 1,
      ),
      titlesData: const FlTitlesData(
        show: false,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
        show: false,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 8,
      minY: 0,
      maxY: 5,
      lineBarsData: [
        // coordinates in chart
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(0.5, 3),
            FlSpot(1, 2.5),
            FlSpot(1.5, 3),
            FlSpot(2, 3.5),
            FlSpot(2.5, 3.0),
            FlSpot(3, 3.2),
            FlSpot(3.5, 2.2),
            FlSpot(4, 3.5),
            FlSpot(4.5, 2.9),
            FlSpot(5, 1.2),
            FlSpot(5.5, 4.1),
            FlSpot(6, 3.9),
            FlSpot(6.5, 2.9),
            FlSpot(7, 1.2),
            FlSpot(7.5, 2.2),
            FlSpot(8, 3.2),
          ],
          isCurved: true,
          color: BrandColors.primaryColor,
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
