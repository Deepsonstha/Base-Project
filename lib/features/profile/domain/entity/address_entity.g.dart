// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressEntityImpl _$$AddressEntityImplFromJson(Map<String, dynamic> json) =>
    _$AddressEntityImpl(
      street: json['street'] as String?,
      suite: json['suite'] as String?,
      city: json['city'] as String?,
      zipcode: json['zipcode'] as String?,
      geo: json['geo'] == null
          ? null
          : GeoEntity.fromJson(json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddressEntityImplToJson(_$AddressEntityImpl instance) =>
    <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'geo': instance.geo,
    };
