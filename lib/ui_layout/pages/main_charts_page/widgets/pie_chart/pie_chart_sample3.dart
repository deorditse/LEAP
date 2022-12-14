import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:business_layout/business_layout.dart';
import 'package:leap/ui_layout/pages/about_chart_page/about_chart_page.dart';

class PieChartSample extends StatefulWidget {
  const PieChartSample({super.key});

  @override
  State<StatefulWidget> createState() => PieChartSampleState();
}

class PieChartSampleState extends State {
  Rx<int> touchedIndex = (-1).obs;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ImplementControllerChartPage>(
      builder: (controllerChart) {
        return controllerChart.listPieChartSectionWithMinimalInfo.isNotEmpty
            ? Obx(
                () => PieChart(
                  PieChartData(
                    pieTouchData: PieTouchData(
                      touchCallback: (FlTouchEvent event, pieTouchResponse) {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          touchedIndex.value = -1;

                          return;
                        }

                        touchedIndex.value = pieTouchResponse
                            .touchedSection!.touchedSectionIndex;

                        if (touchedIndex.value != -1) {
                          Get.toNamed(
                            AboutChartPage.id,
                            arguments: controllerChart
                                .listPieChartSectionWithMinimalInfo[
                                    touchedIndex.value]
                                ?.keys
                                .first,
                          );
                        }
                      },
                    ),
                    sectionsSpace: 2,
                    centerSpaceRadius: 30,
                    sections:
                        _showingSections(touchedIndex: touchedIndex.value),
                  ),
                ),
              )
            : Center(child: CircularProgressIndicator());
      },
    );
  }

  List<PieChartSectionData> _showingSections({required int touchedIndex}) {
    final controllerListMinimalData = ImplementControllerChartPage
        .instance.listPieChartSectionWithMinimalInfo;
    return List.generate(controllerListMinimalData.length, (index) {
      String title =
          ((controllerListMinimalData[index]?.values.first ?? 0) / 1000000000)
              .toStringAsFixed(0);
      String nameCompany =
          controllerListMinimalData[index]?.keys.first.split(' ')[0] ?? "...";
      double _capitalCompany =
          (controllerListMinimalData[index]?.values.first ??
                  ((1 / controllerListMinimalData.length) * 100)) /
              ImplementControllerChartPage.instance.sumAllCompanyCapital;

      final isTouched = index == touchedIndex;
      final fontSize = isTouched ? 20.0 : 16.0;
      final radius = isTouched ? 200.0 : 130.0;

      switch (index) {
        case 0:
          return _myPieChartSectionData(
            radius: radius,
            fontSize: fontSize,
            title: "$nameCompany\n$title",
            backgroundColor: Colors.pink,
            value: _capitalCompany,
          );

        case 1:
          return _myPieChartSectionData(
            radius: radius,
            fontSize: fontSize,
            title: "$nameCompany\n$title",
            backgroundColor: Colors.green,
            value: _capitalCompany,
          );

        case 2:
          return _myPieChartSectionData(
            radius: radius,
            fontSize: fontSize,
            title: "$nameCompany\n$title",
            backgroundColor: Colors.red,
            value: _capitalCompany,
          );

        case 3:
          return _myPieChartSectionData(
            radius: radius,
            fontSize: fontSize,
            title: "$nameCompany\n$title",
            backgroundColor: Colors.yellow,
            value: _capitalCompany,
          );
        case 4:
          return _myPieChartSectionData(
            radius: radius,
            fontSize: fontSize,
            title: "$nameCompany\n$title",
            backgroundColor: Colors.green,
            value: _capitalCompany,
          );

        default:
          throw Exception('Oh no');
      }
    });
  }
}

PieChartSectionData _myPieChartSectionData({
  required double radius,
  required double fontSize,
  required String title,
  required Color backgroundColor,
  required double value,
}) {
  return PieChartSectionData(
    color: backgroundColor,
    value: value,
    title: title,
    radius: radius,
    titleStyle: TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    badgePositionPercentageOffset: .98,
  );
}
