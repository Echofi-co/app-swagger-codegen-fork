import 'package:json_annotation/json_annotation.dart';
import 'package:swagger_dart_code_generator/src/swagger_models/responses/swagger_schema.dart';

import '../responses/swagger_response.dart';
import 'swagger_request_parameter.dart';

part 'swagger_request.g2.dart';

@JsonSerializable()
class SwaggerRequest {
  SwaggerRequest({
    this.summary = '',
    this.description = '',
    this.operationId = '',
    this.consumes = const [],
    this.responses = const {},
    this.parameters = const [],
    this.produces = const [],
    this.security = const [],
    this.requestBody,
  });

  String summary;
  String description;
  String operationId;
  List<String> consumes;
  List<String> produces;
  Map<String, SwaggerResponse> responses;
  List<SwaggerRequestParameter> parameters;
  RequestBody? requestBody;

  Map<String, dynamic> toJson() => _$SwaggerRequestToJson(this);

  factory SwaggerRequest.fromJson(Map<String, dynamic> json) =>
      _$SwaggerRequestFromJson(json);
}

@JsonSerializable()
class RequestBody {
  @JsonKey(name: 'content', fromJson: _contentFromJson)
  RequestContent? content;

  @JsonKey(name: '\$ref', defaultValue: '')
  String ref;

  RequestBody({
    this.content,
    this.ref = '',
  });

  Map<String, dynamic> toJson() => _$RequestBodyToJson(this);

  factory RequestBody.fromJson(Map<String, dynamic> json) =>
      _$RequestBodyFromJson(json);
}

RequestContent? _contentFromJson(Map<String, dynamic>? map) {
  if (map == null || map.isEmpty) {
    return null;
  }

  final content = map.values.first as Map<String, dynamic>;

  return RequestContent.fromJson(content);
}

@JsonSerializable()
class RequestContent {
  RequestContent({
    this.schema,
  });

  @JsonKey(name: 'schema')
  final SwaggerSchema? schema;

  Map<String, dynamic> toJson() => _$RequestContentToJson(this);

  factory RequestContent.fromJson(Map<String, dynamic> json) =>
      _$RequestContentFromJson(json);
}

List<String> _securityFromJson(List? map) {
  if (map == null) {
    return [];
  }

  final result = map
      .map((e) => (e as Map<String, dynamic>?)?.keys)
      .expand((ee) => ee?.toList() ?? <String>[])
      .toList();

  return result;
}
