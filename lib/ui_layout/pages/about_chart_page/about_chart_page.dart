import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leap/ui_layout/style_app/consts_app.dart';
import 'package:models/models.dart';
import 'package:leap/ui_layout/style_app/text_style.dart';
import 'package:business_layout/business_layout.dart';

class AboutChartPage extends StatefulWidget {
  static const String id = '/aboutChartPage';

  AboutChartPage({Key? key, this.nameCompany}) : super(key: key);

  String? nameCompany;

  @override
  State<AboutChartPage> createState() => _AboutChartPageState();
}

class _AboutChartPageState extends State<AboutChartPage> {
  @override
  void initState() {
    super.initState();
    widget.nameCompany = Get.arguments;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: FittedBox(
          child: Text(
            widget.nameCompany ?? "Компания",
            style: myTextStyleFontS8Sans(context: context, fontSize: 20),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder<AboutCompanyModel?>(
            future: ImplementControllerChartPage.instance
                .getAllInfoAboutCompanyData(nameCompany: widget.nameCompany!),
            builder: (BuildContext context,
                AsyncSnapshot<AboutCompanyModel?> snapshot) {
              return snapshot.data != null
                  ? IfSnapshotHasData(aboutCompany: snapshot.data!)
                  : const Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }
}

class IfSnapshotHasData extends StatelessWidget {
  const IfSnapshotHasData({Key? key, required this.aboutCompany})
      : super(key: key);
  final AboutCompanyModel aboutCompany;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FittedBox(
            child: Text(
              aboutCompany.Name ?? ' ',
              style: myTextStyleFontS8Sans(context: context, fontSize: 40),
            ),
          ),
          FittedBox(
            child: Text(
              "Industry: ${aboutCompany.Industry ?? ''}",
              style: myTextStyleFontS8Sans(context: context, fontSize: 12),
            ),
          ),
          mySizedHeightBetweenContainer,
          Text(
            "О компании:",
            style: myTextStyleFontS8Sans(context: context, fontSize: 24),
          ),
          Text(
            "${aboutCompany.Description}" ?? '',
            style: myTextStyleFontS8Sans(
                context: context, fontSize: 18, newFontWeight: FontWeight.w300),
          ),
          mySizedHeightBetweenContainer,
          mySizedHeightBetweenContainer,
          Divider(),
          Text(
            "${aboutCompany.Sector}" ?? '',
            style: myTextStyleFontS8Sans(
                context: context, fontSize: 18, newFontWeight: FontWeight.w200),
          ),
          Divider(),
          mySizedHeightBetweenContainer,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "EBITDA: ${aboutCompany.EBITDA}" ?? '',
                    style:
                        myTextStyleFontS8Sans(context: context, fontSize: 18),
                  ),
                  Text(
                    "Биржа: ${aboutCompany.Exchange}" ?? '',
                    style:
                        myTextStyleFontS8Sans(context: context, fontSize: 18),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Country ${aboutCompany.Country}" ?? '',
                    style:
                        myTextStyleFontS8Sans(context: context, fontSize: 18),
                  ),
                  Text(
                    "Currency ${aboutCompany.Currency}" ?? '',
                    style:
                        myTextStyleFontS8Sans(context: context, fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
          mySizedHeightBetweenContainer,
        ],
      ),
    );
  }
}
