


import 'package:data_from_api/page/model/address_model.dart';
import 'package:data_from_api/page/model/company_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'todo_model.g.dart';

@JsonSerializable()
class TodoModel {
  final int? id;
  final String? name;
  final String? username;
  final String? email;
  AddressModel? address;
  final String? phone;
  final String? website;
  CompanyModel? company;

  TodoModel(
    this.id,
    this.name,
    this.email,
    this.username,
    this.phone,
    this.website,
    this.address,
    this.company,
  );
  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);

  Map<String, dynamic> toJson() => _$TodoModelToJson(this);
}
