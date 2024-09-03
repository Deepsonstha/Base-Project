// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:base_project/core/network_services/local_service/hive/hive_adapters.dart';
import 'package:base_project/features/profile/data/models/address_model.dart';
import 'package:base_project/features/profile/data/models/company_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'user_model.g.dart';

@HiveType(typeId: HiveAdapters.userModelTypeID, adapterName: HiveAdapters.userModelAdapterName)
class UserModel {
  @HiveField(0)
  final int? id;
  @HiveField(1)
  final String? name;
  @HiveField(2)
  final String? username;
  @HiveField(3)
  final String? email;
  @HiveField(4)
  final AddressModel? address;
  @HiveField(5)
  final String? phone;
  @HiveField(6)
  final String? website;
  @HiveField(7)
  final CompanyModel? company;

  UserModel({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });
  static List<UserModel> listfromMap(List<dynamic> data) {
    return data.map((e) => UserModel.fromMap(e)).toList();
  }

  factory UserModel.fromJson(String str) => UserModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        address: json["address"] == null ? null : AddressModel.fromMap(json["address"]),
        phone: json["phone"],
        website: json["website"],
        company: json["company"] == null ? null : CompanyModel.fromMap(json["company"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "username": username,
        "email": email,
        "address": address?.toMap(),
        "phone": phone,
        "website": website,
        "company": company?.toMap(),
      };

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, username: $username, email: $email, address: $address, phone: $phone, website: $website, company: $company)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.username == username &&
        other.email == email &&
        other.address == address &&
        other.phone == phone &&
        other.website == website &&
        other.company == company;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ username.hashCode ^ email.hashCode ^ address.hashCode ^ phone.hashCode ^ website.hashCode ^ company.hashCode;
  }
}
