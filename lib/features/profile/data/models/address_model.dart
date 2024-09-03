// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

import 'package:base_project/core/network_services/local_service/hive/hive_adapters.dart';
import 'package:base_project/features/profile/data/models/geo_model.dart';

part 'address_model.g.dart';

@HiveType(typeId: HiveAdapters.addressModelTypeID, adapterName: HiveAdapters.addressModelAdapterName)
class AddressModel {
  @HiveField(0)
  final String? street;
  @HiveField(1)
  final String? suite;
  @HiveField(2)
  final String? city;
  @HiveField(3)
  final String? zipcode;
  @HiveField(4)
  final GeoModel? geo;

  AddressModel({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geo,
  });

  factory AddressModel.fromJson(String str) => AddressModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AddressModel.fromMap(Map<String, dynamic> json) => AddressModel(
        street: json["street"],
        suite: json["suite"],
        city: json["city"],
        zipcode: json["zipcode"],
        geo: json["geo"] == null ? null : GeoModel.fromMap(json["geo"]),
      );

  Map<String, dynamic> toMap() => {
        "street": street,
        "suite": suite,
        "city": city,
        "zipcode": zipcode,
        "geo": geo?.toMap(),
      };

  @override
  String toString() {
    return 'AddressModel(street: $street, suite: $suite, city: $city, zipcode: $zipcode, geo: $geo)';
  }

  @override
  bool operator ==(covariant AddressModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.street == street &&
      other.suite == suite &&
      other.city == city &&
      other.zipcode == zipcode &&
      other.geo == geo;
  }

  @override
  int get hashCode {
    return street.hashCode ^
      suite.hashCode ^
      city.hashCode ^
      zipcode.hashCode ^
      geo.hashCode;
  }
}
