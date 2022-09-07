


import 'package:data_from_api/page/model/geo_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'address_model.g.dart';

@JsonSerializable()
class AddressModel {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  GeoModel geo;

  AddressModel(
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geo,
  );
  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddressModelToJson(this);
}
