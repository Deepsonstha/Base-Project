import 'package:freezed_annotation/freezed_annotation.dart';

part 'geo_entity.freezed.dart';
part 'geo_entity.g.dart';

@freezed
 class GeoEntity with _$GeoEntity {
  const factory GeoEntity({
    String? lat,
    String? lng,
  }) = _GeoEntity;
  factory GeoEntity.fromJson(Map<String, dynamic> json) => _$GeoEntityFromJson(json);
}
