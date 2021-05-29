import 'package:swagger_dart_code_generator/src/swagger_models/requests/swagger_request_parameter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:swagger_dart_code_generator/src/swagger_models/responses/swagger_schema.dart';

part 'swagger_components.g2.dart';

@JsonSerializable()
class SwaggerComponents {
  SwaggerComponents({
    required this.parameters,
    required this.schemas,
    required this.responses,
  });

  @JsonKey(name: 'parameters', defaultValue: [])
  List<SwaggerRequestParameter> parameters;

  @JsonKey(name: 'schemas', defaultValue: {})
  Map<String, SwaggerSchema> schemas;

  @JsonKey(name: 'responses', defaultValue: {},  fromJson: mapResponses)
  Map<String, SwaggerSchema> responses;

  Map<String, dynamic> toJson() => _$SwaggerComponentsToJson(this);

  factory SwaggerComponents.fromJson(Map<String, dynamic> json) =>
      _$SwaggerComponentsFromJson(json);
}

Map<String, SwaggerSchema> mapResponses(Map<String, dynamic> json) {
  var results = <String, SwaggerSchema>{};

  json.forEach((key, value) {
    final content =
        (value as Map<String, dynamic>)['content'] as Map<String, dynamic>?;
    final appJson = content?['application/json'] as Map<String, dynamic>?;

    if (appJson != null && appJson['schema'] != null) {
      results[key] =
          SwaggerSchema.fromJson(appJson['schema'] as Map<String, dynamic>);
    }
  });

  return results;
}
