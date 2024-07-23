import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_entity.freezed.dart';
part 'company_entity.g.dart';

@freezed
 class CompanyEntity with _$CompanyEntity {
  const factory CompanyEntity({
    String? name,
    String? catchPhrase,
    String? bs,
  }) = _CompanyEntity;
  factory CompanyEntity.fromJson(Map<String, dynamic> json) => _$CompanyEntityFromJson(json);
}
