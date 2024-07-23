import 'package:base_project/features/profile/data/models/address_model.dart';
import 'package:base_project/features/profile/data/models/company_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    int? id,
    String? name,
    String? username,
    String? email,
    AddressModel? address,
    String? phone,
    String? website,
    CompanyModel? company,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
