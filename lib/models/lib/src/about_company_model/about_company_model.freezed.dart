// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_company_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AboutCompanyModel _$AboutCompanyModelFromJson(Map<String, dynamic> json) {
  return _AboutCompanyModel.fromJson(json);
}

/// @nodoc
mixin _$AboutCompanyModel {
  String? get Name => throw _privateConstructorUsedError;
  String? get Description => throw _privateConstructorUsedError;
  String? get Exchange => throw _privateConstructorUsedError;
  String? get Currency => throw _privateConstructorUsedError;
  String? get Country => throw _privateConstructorUsedError;
  String? get Sector => throw _privateConstructorUsedError;
  String? get Industry => throw _privateConstructorUsedError;
  String? get EBITDA => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AboutCompanyModelCopyWith<AboutCompanyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutCompanyModelCopyWith<$Res> {
  factory $AboutCompanyModelCopyWith(
          AboutCompanyModel value, $Res Function(AboutCompanyModel) then) =
      _$AboutCompanyModelCopyWithImpl<$Res, AboutCompanyModel>;
  @useResult
  $Res call(
      {String? Name,
      String? Description,
      String? Exchange,
      String? Currency,
      String? Country,
      String? Sector,
      String? Industry,
      String? EBITDA});
}

/// @nodoc
class _$AboutCompanyModelCopyWithImpl<$Res, $Val extends AboutCompanyModel>
    implements $AboutCompanyModelCopyWith<$Res> {
  _$AboutCompanyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Name = freezed,
    Object? Description = freezed,
    Object? Exchange = freezed,
    Object? Currency = freezed,
    Object? Country = freezed,
    Object? Sector = freezed,
    Object? Industry = freezed,
    Object? EBITDA = freezed,
  }) {
    return _then(_value.copyWith(
      Name: freezed == Name
          ? _value.Name
          : Name // ignore: cast_nullable_to_non_nullable
              as String?,
      Description: freezed == Description
          ? _value.Description
          : Description // ignore: cast_nullable_to_non_nullable
              as String?,
      Exchange: freezed == Exchange
          ? _value.Exchange
          : Exchange // ignore: cast_nullable_to_non_nullable
              as String?,
      Currency: freezed == Currency
          ? _value.Currency
          : Currency // ignore: cast_nullable_to_non_nullable
              as String?,
      Country: freezed == Country
          ? _value.Country
          : Country // ignore: cast_nullable_to_non_nullable
              as String?,
      Sector: freezed == Sector
          ? _value.Sector
          : Sector // ignore: cast_nullable_to_non_nullable
              as String?,
      Industry: freezed == Industry
          ? _value.Industry
          : Industry // ignore: cast_nullable_to_non_nullable
              as String?,
      EBITDA: freezed == EBITDA
          ? _value.EBITDA
          : EBITDA // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AboutCompanyModelCopyWith<$Res>
    implements $AboutCompanyModelCopyWith<$Res> {
  factory _$$_AboutCompanyModelCopyWith(_$_AboutCompanyModel value,
          $Res Function(_$_AboutCompanyModel) then) =
      __$$_AboutCompanyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? Name,
      String? Description,
      String? Exchange,
      String? Currency,
      String? Country,
      String? Sector,
      String? Industry,
      String? EBITDA});
}

/// @nodoc
class __$$_AboutCompanyModelCopyWithImpl<$Res>
    extends _$AboutCompanyModelCopyWithImpl<$Res, _$_AboutCompanyModel>
    implements _$$_AboutCompanyModelCopyWith<$Res> {
  __$$_AboutCompanyModelCopyWithImpl(
      _$_AboutCompanyModel _value, $Res Function(_$_AboutCompanyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Name = freezed,
    Object? Description = freezed,
    Object? Exchange = freezed,
    Object? Currency = freezed,
    Object? Country = freezed,
    Object? Sector = freezed,
    Object? Industry = freezed,
    Object? EBITDA = freezed,
  }) {
    return _then(_$_AboutCompanyModel(
      Name: freezed == Name
          ? _value.Name
          : Name // ignore: cast_nullable_to_non_nullable
              as String?,
      Description: freezed == Description
          ? _value.Description
          : Description // ignore: cast_nullable_to_non_nullable
              as String?,
      Exchange: freezed == Exchange
          ? _value.Exchange
          : Exchange // ignore: cast_nullable_to_non_nullable
              as String?,
      Currency: freezed == Currency
          ? _value.Currency
          : Currency // ignore: cast_nullable_to_non_nullable
              as String?,
      Country: freezed == Country
          ? _value.Country
          : Country // ignore: cast_nullable_to_non_nullable
              as String?,
      Sector: freezed == Sector
          ? _value.Sector
          : Sector // ignore: cast_nullable_to_non_nullable
              as String?,
      Industry: freezed == Industry
          ? _value.Industry
          : Industry // ignore: cast_nullable_to_non_nullable
              as String?,
      EBITDA: freezed == EBITDA
          ? _value.EBITDA
          : EBITDA // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AboutCompanyModel implements _AboutCompanyModel {
  const _$_AboutCompanyModel(
      {required this.Name,
      this.Description,
      this.Exchange,
      this.Currency,
      this.Country,
      this.Sector,
      this.Industry,
      this.EBITDA});

  factory _$_AboutCompanyModel.fromJson(Map<String, dynamic> json) =>
      _$$_AboutCompanyModelFromJson(json);

  @override
  final String? Name;
  @override
  final String? Description;
  @override
  final String? Exchange;
  @override
  final String? Currency;
  @override
  final String? Country;
  @override
  final String? Sector;
  @override
  final String? Industry;
  @override
  final String? EBITDA;

  @override
  String toString() {
    return 'AboutCompanyModel(Name: $Name, Description: $Description, Exchange: $Exchange, Currency: $Currency, Country: $Country, Sector: $Sector, Industry: $Industry, EBITDA: $EBITDA)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AboutCompanyModel &&
            (identical(other.Name, Name) || other.Name == Name) &&
            (identical(other.Description, Description) ||
                other.Description == Description) &&
            (identical(other.Exchange, Exchange) ||
                other.Exchange == Exchange) &&
            (identical(other.Currency, Currency) ||
                other.Currency == Currency) &&
            (identical(other.Country, Country) || other.Country == Country) &&
            (identical(other.Sector, Sector) || other.Sector == Sector) &&
            (identical(other.Industry, Industry) ||
                other.Industry == Industry) &&
            (identical(other.EBITDA, EBITDA) || other.EBITDA == EBITDA));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, Name, Description, Exchange,
      Currency, Country, Sector, Industry, EBITDA);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AboutCompanyModelCopyWith<_$_AboutCompanyModel> get copyWith =>
      __$$_AboutCompanyModelCopyWithImpl<_$_AboutCompanyModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AboutCompanyModelToJson(
      this,
    );
  }
}

abstract class _AboutCompanyModel implements AboutCompanyModel {
  const factory _AboutCompanyModel(
      {required final String? Name,
      final String? Description,
      final String? Exchange,
      final String? Currency,
      final String? Country,
      final String? Sector,
      final String? Industry,
      final String? EBITDA}) = _$_AboutCompanyModel;

  factory _AboutCompanyModel.fromJson(Map<String, dynamic> json) =
      _$_AboutCompanyModel.fromJson;

  @override
  String? get Name;
  @override
  String? get Description;
  @override
  String? get Exchange;
  @override
  String? get Currency;
  @override
  String? get Country;
  @override
  String? get Sector;
  @override
  String? get Industry;
  @override
  String? get EBITDA;
  @override
  @JsonKey(ignore: true)
  _$$_AboutCompanyModelCopyWith<_$_AboutCompanyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
