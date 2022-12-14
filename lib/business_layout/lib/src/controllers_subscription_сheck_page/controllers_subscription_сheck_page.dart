import 'package:file_picker/file_picker.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:models/models.dart';
import 'package:data_layout/data_layout.dart';

List<String> _namesCompany = ['AAPL', 'AMZN', 'GOOG', 'MSFT', 'IBM'];

class ImplementControllerChartPage extends GetxController {
  static final ImplementControllerChartPage instance =
      Get.find<ImplementControllerChartPage>();

  final ServicesChartPage _services = ServicesChartPage();

  List<Map<String, double>?> listPieChartSectionWithMinimalInfo = [];

  double sumAllCompanyCapital = 1;

  @override
  Future<void> onInit() async {
    super.onInit();
    await _initialData();
  }

  _initialData() async {
    for (var nameCompany in _namesCompany) {
      await _services
          .getMinimumInfoAboutCompanyData(nameCompany: nameCompany)
          .then(
        (dataMinimalCompany) {
          if (dataMinimalCompany != null) {
            listPieChartSectionWithMinimalInfo.add(dataMinimalCompany);
            sumAllCompanyCapital += dataMinimalCompany.values.first;
            update();
          }
        },
      );
    }
  }

  ///получение полной информации о компании
  Map<String, AboutCompanyModel?> _mapNameAndAboutCompanyModel = {};

  Future<AboutCompanyModel?> getAllInfoAboutCompanyData(
      {required nameCompany, bool isUpdate = false}) async {
    if (_mapNameAndAboutCompanyModel[nameCompany] == null || isUpdate) {
      AboutCompanyModel? _res =
          await _services.getAllInfoAboutCompanyData(nameCompany: nameCompany);
      _mapNameAndAboutCompanyModel[nameCompany] = _res;
      update();
      return _res;
    } else {
      return _mapNameAndAboutCompanyModel[nameCompany];
    }
  }
}
