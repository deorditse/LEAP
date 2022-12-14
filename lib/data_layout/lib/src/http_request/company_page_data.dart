import 'dart:convert';
import 'dart:developer';
import 'package:data_layout/configuration_file.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:models/models.dart';
import 'package:http_parser/http_parser.dart';
import 'package:http/http.dart' as http;

class ServicesChartPage {
  ///Роут получения минимальной информации для графика
  Future<Map<String, double>?> getMinimumInfoAboutCompanyData({
    required String nameCompany,
  }) async {
    String nameMethod = 'getMinimumInfoAboutCompanyData';

    try {
      Uri url = urlMain(
        urlPath: 'query',
        queryParameters: {
          "function": "OVERVIEW",
          "symbol": "$nameCompany",
          "apikey": apiKey,
        },
      );
      var response = await http.get(url);
      print(response.body);
      if (response.statusCode == 200) {
        Map<String, dynamic> _res = jsonDecode(response.body);

        return {
          "${_res['Symbol']}": double.parse(_res['MarketCapitalization'])
        };
      } else {
        theRequestFailed(
          nameMethod: nameMethod,
          responseStatus: response.statusCode,
          data: response.body,
        );
      }
    } catch (error) {
      return errorRequest(error: error, nameMethod: nameMethod);
    }
  }

  ///Роут получения всей информации о компании
  Future<AboutCompanyModel?> getAllInfoAboutCompanyData({
    required String nameCompany,
  }) async {
    String nameMethod = 'getAllInfoAboutCompanyData';

    try {
      Uri url = urlMain(
        urlPath: 'query',
        queryParameters: {
          "function": "OVERVIEW",
          "symbol": "$nameCompany",
          "apikey": apiKey,
        },
      );
      var response = await http.get(url);
      if (response.statusCode == 200) {
        print(response.body);
        return  AboutCompanyModel.fromJson(jsonDecode(response.body));
      } else {
        theRequestFailed(
          nameMethod: nameMethod,
          responseStatus: response.statusCode,
          data: response.body,
        );
      }
    } catch (error) {
      return errorRequest(error: error, nameMethod: nameMethod);
    }
  }
}
