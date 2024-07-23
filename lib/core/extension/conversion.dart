import 'package:base_project/features/profile/data/models/address_model.dart';
import 'package:base_project/features/profile/data/models/company_model.dart';
import 'package:base_project/features/profile/data/models/geo_model.dart';
import 'package:base_project/features/profile/data/models/user_model.dart';
import 'package:base_project/features/profile/domain/entity/address_entity.dart';
import 'package:base_project/features/profile/domain/entity/company_entity.dart';
import 'package:base_project/features/profile/domain/entity/geo_entity.dart';
import 'package:base_project/features/profile/domain/entity/user_entity.dart';

extension GeoEntityHelper on GeoModel {
  GeoEntity toEntity() => GeoEntity(
        lat: lat,
        lng: lng,
      );
}

extension GeoModelHelper on GeoEntity {
  GeoModel toModel() => GeoModel(
        lat: lat,
        lng: lng,
      );
}

extension AddressEntityHelper on AddressModel {
  AddressEntity toEntity() => AddressEntity(
        street: street,
        city: city,
        geo: geo?.toEntity(),
        suite: suite,
        zipcode: zipcode,
      );
}

extension AddressModelHelper on AddressEntity {
  AddressModel toModel() => AddressModel(
        street: street,
        city: city,
        geo: geo?.toModel(),
        suite: suite,
        zipcode: zipcode,
      );
}

extension CompanyEntityHelper on CompanyModel {
  CompanyEntity toEntity() => CompanyEntity(
        name: name,
        catchPhrase: catchPhrase,
        bs: bs,
      );
}

extension CompanyModelHelper on CompanyEntity {
  CompanyModel toModel() => CompanyModel(
        name: name,
        catchPhrase: catchPhrase,
        bs: bs,
      );
}

extension UserEntityHelper on UserModel {
  UserEntity toEntity() => UserEntity(
        name: name,
        email: email,
        address: address?.toEntity(),
        phone: phone,
        website: website,
        company: company?.toEntity(),
        id: id,
        username: username,
      );
}

extension UserModelHelper on UserEntity {
  UserModel toModel() => UserModel(
        name: name,
        email: email,
        address: address?.toModel(),
        phone: phone,
        website: website,
        company: company?.toModel(),
        id: id,
        username: username,
      );
}
