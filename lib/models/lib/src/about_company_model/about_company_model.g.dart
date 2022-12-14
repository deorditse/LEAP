// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AboutCompanyModel _$$_AboutCompanyModelFromJson(Map<String, dynamic> json) =>
    _$_AboutCompanyModel(
      Name: json['Name'] as String?,
      Description: json['Description'] as String?,
      Exchange: json['Exchange'] as String?,
      Currency: json['Currency'] as String?,
      Country: json['Country'] as String?,
      Sector: json['Sector'] as String?,
      Industry: json['Industry'] as String?,
      EBITDA: json['EBITDA'] as String?,
    );

Map<String, dynamic> _$$_AboutCompanyModelToJson(
        _$_AboutCompanyModel instance) =>
    <String, dynamic>{
      'Name': instance.Name,
      'Description': instance.Description,
      'Exchange': instance.Exchange,
      'Currency': instance.Currency,
      'Country': instance.Country,
      'Sector': instance.Sector,
      'Industry': instance.Industry,
      'EBITDA': instance.EBITDA,
    };
