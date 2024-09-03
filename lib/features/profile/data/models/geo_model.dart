// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:base_project/core/network_services/local_service/hive/hive_adapters.dart';
import 'package:hive_flutter/hive_flutter.dart';


part 'geo_model.g.dart';

@HiveType(typeId: HiveAdapters.geoModelTypeID, adapterName: HiveAdapters.geoModelAdapterName)
class GeoModel {
  @HiveField(0)
  final String? lat;
  @HiveField(1)
  final String? lng;

  GeoModel({
    this.lat,
    this.lng,
  });

  factory GeoModel.fromJson(String str) => GeoModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GeoModel.fromMap(Map<String, dynamic> json) => GeoModel(
        lat: json["lat"],
        lng: json["lng"],
      );

  Map<String, dynamic> toMap() => {
        "lat": lat,
        "lng": lng,
      };

  @override
  String toString() => 'GeoModel(lat: $lat, lng: $lng)';

  @override
  bool operator ==(covariant GeoModel other) {
    if (identical(this, other)) return true;

    return other.lat == lat && other.lng == lng;
  }

  @override
  int get hashCode => lat.hashCode ^ lng.hashCode;
}
