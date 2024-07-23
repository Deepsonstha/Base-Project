import 'package:base_project/features/profile/domain/entity/geo_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_entity.freezed.dart';
part 'address_entity.g.dart';

@freezed
 class AddressEntity with _$AddressEntity {
  const factory AddressEntity({
    String? street,
    String? suite,
    String? city,
    String? zipcode,
    GeoEntity? geo,
  }) = _AddressEntity;
  factory AddressEntity.fromJson(Map<String, dynamic> json) => _$AddressEntityFromJson(json);
}
