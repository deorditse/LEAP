import 'package:business_layout/business_layout.dart';
import 'package:get/get.dart';

class BindingChartPage implements Bindings {
  @override
  void dependencies() {
    Get.put(ImplementControllerChartPage(), permanent: true);
  }
}
