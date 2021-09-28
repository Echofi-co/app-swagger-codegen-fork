import 'package:json_annotation/json_annotation.dart';

part 'swagger_request_items.g2.dart';

@JsonSerializable()
class SwaggerRequestItems {
  SwaggerRequestItems({
    this.type = '',
    this.enumValues = const [],
    this.ref = '',
  });

  String type;

  @JsonKey(name: 'enum')
  List<String> enumValues;

  @JsonKey(name: '\$ref')
  String ref;

  Map<String, dynamic> toJson() => _$SwaggerRequestItemsToJson(this);

  factory SwaggerRequestItems.fromJson(Map<String, dynamic> json) =>
      _$SwaggerRequestItemsFromJson(json);
}
