import 'package:flutter/material.dart';
import 'package:leap/ui_layout/style_app/text_style.dart';
import 'widgets/pie_chart/pie_chart_sample3.dart';

class MainChartsPage extends StatelessWidget {
  static const String id = '/';

  const MainChartsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(
                "Капитализация",
                style: myTextStyleFontS8Sans(context: context, fontSize: 40),
              ),
              Expanded(child: PieChartSample()),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
