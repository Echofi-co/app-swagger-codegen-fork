import 'package:json_annotation/json_annotation.dart';
import 'package:swagger_dart_code_generator/src/swagger_models/requests/swagger_request_parameter.dart';

import 'requests/swagger_request.dart';

part 'swagger_path.g2.dart';

@JsonSerializable()
class SwaggerPath {
  SwaggerPath({
    this.requests = const {},
    this.parameters = const [],
  });

  Map<String, SwaggerRequest> requests;

  List<SwaggerRequestParameter> parameters;

  Map<String, dynamic> toJson() => _$SwaggerPathToJson(this);

  factory SwaggerPath.fromJson(Map<String, dynamic> json) =>
      _$SwaggerPathFromJson(json);
}
