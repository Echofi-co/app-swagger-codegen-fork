import 'package:json_annotation/json_annotation.dart';

part 'swagger_info.g2.dart';

@JsonSerializable()
class SwaggerInfo {
  SwaggerInfo({
    this.description = '',
    this.version = '',
    this.title = '',
    this.termsOfService = '',
  });

  factory SwaggerInfo.fromJson(Map<String, dynamic> json) =>
      _$SwaggerInfoFromJson(json);

  String description;
  String version;
  String title;
  String termsOfService;

  Map<String, dynamic> toJson() => _$SwaggerInfoToJson(this);
}
