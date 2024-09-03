// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:base_project/core/network_services/local_service/hive/hive_adapters.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'company_model.g.dart';

@HiveType(typeId: HiveAdapters.companyModelTypeID , adapterName: HiveAdapters.companyAdapterName)
class CompanyModel {
  @HiveField(0)
  final String? name;
  @HiveField(1)
  final String? catchPhrase;
  @HiveField(2)
  final String? bs;

  CompanyModel({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  factory CompanyModel.fromJson(String str) => CompanyModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CompanyModel.fromMap(Map<String, dynamic> json) => CompanyModel(
        name: json["name"],
        catchPhrase: json["catchPhrase"],
        bs: json["bs"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "catchPhrase": catchPhrase,
        "bs": bs,
      };

  @override
  String toString() => 'CompanyModel(name: $name, catchPhrase: $catchPhrase, bs: $bs)';

  @override
  bool operator ==(covariant CompanyModel other) {
    if (identical(this, other)) return true;

    return other.name == name && other.catchPhrase == catchPhrase && other.bs == bs;
  }

  @override
  int get hashCode => name.hashCode ^ catchPhrase.hashCode ^ bs.hashCode;
}
