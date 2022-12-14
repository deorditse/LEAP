import 'package:freezed_annotation/freezed_annotation.dart';

part 'about_company_model.freezed.dart';

part 'about_company_model.g.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
@freezed
class AboutCompanyModel with _$AboutCompanyModel {
  const factory AboutCompanyModel({
    required String? Name,
    String? Description,
    String? Exchange,
    String? Currency,
    String? Country,
    String? Sector,
    String? Industry,
    String? EBITDA,
  }) = _AboutCompanyModel;

  factory AboutCompanyModel.fromJson(Map<String, Object?> json) =>
      _$AboutCompanyModelFromJson(json);
}
