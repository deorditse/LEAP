import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:business_layout/business_layout.dart';
import 'ui_layout/pages/about_chart_page/about_chart_page.dart';
import 'ui_layout/pages/main_charts_page/main_charts_page.dart';
import 'ui_layout/style_app/theme_app/material_theme/light_custom_theme_material.dart';

//flutter build web
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); //for future

  runApp(const MyGetAppSubscription());
}

class MyGetAppSubscription extends StatelessWidget {
  const MyGetAppSubscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: MainChartsPage.id,
      debugShowCheckedModeBanner: false,
      initialBinding: BindingChartPage(),
      theme: themeLight,
      getPages: [
        GetPage(
          name: MainChartsPage.id,
          page: () => MainChartsPage(),
          binding: BindingChartPage(),
        ),
        GetPage(
          name: AboutChartPage.id,
          page: () => AboutChartPage(),
          binding: BindingChartPage(),
        ),
      ],
    );
  }
}
