import 'package:base_project/features/profile/domain/entity/address_entity.dart';
import 'package:base_project/features/profile/domain/entity/company_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    int? id,
    String? name,
    String? username,
    String? email,
    AddressEntity? address,
    String? phone,
    String? website,
    CompanyEntity? company,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) => _$UserEntityFromJson(json);
}
