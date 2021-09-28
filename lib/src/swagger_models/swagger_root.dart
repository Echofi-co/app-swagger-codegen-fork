import 'package:json_annotation/json_annotation.dart';
import 'package:swagger_dart_code_generator/src/code_generators/constants.dart';
import 'package:swagger_dart_code_generator/src/swagger_models/requests/swagger_request.dart';
import 'package:swagger_dart_code_generator/src/swagger_models/requests/swagger_request_parameter.dart';
import 'package:swagger_dart_code_generator/src/swagger_models/responses/swagger_schema.dart';
import 'package:swagger_dart_code_generator/src/swagger_models/swagger_components.dart';
import 'package:swagger_dart_code_generator/src/swagger_models/swagger_info.dart';
import 'package:swagger_dart_code_generator/src/swagger_models/swagger_path.dart';
import 'package:swagger_dart_code_generator/src/swagger_models/swagger_tag.dart';

part 'swagger_root.g2.dart';

@JsonSerializable()
class SwaggerRoot {
  SwaggerRoot({
    this.info,
    this.host = '',
    this.basePath = '',
    this.tags = const [],
    this.schemes = const [],
    this.paths = const {},
    this.definitions = const {},
    this.parameters = const {},
    this.components,
  });

  SwaggerInfo? info;
  String host;
  String basePath;
  List<SwaggerTag> tags;
  List<String> schemes;

  @JsonKey(fromJson: _mapPaths)
  Map<String, SwaggerPath> paths;

  Map<String, SwaggerSchema> definitions;
  Map<String, SwaggerRequestParameter> parameters;
  SwaggerComponents? components;

  Map<String, dynamic> toJson() => _$SwaggerRootToJson(this);

  factory SwaggerRoot.fromJson(Map<String, dynamic> json) =>
      _$SwaggerRootFromJson(json);
}

Map<String, SwaggerPath> _mapPaths(Map<String, dynamic>? paths) {
  if (paths == null) {
    return {};
  }

  return paths.map((path, pathValue) {
    final value = pathValue as Map<String, dynamic>;
    final parameters = value['parameters'] as List<dynamic>?;
    value.removeWhere(
        (key, value) => !supportedRequestTypes.contains(key.toLowerCase()));

    return MapEntry(
      path,
      SwaggerPath(
        parameters: parameters
                ?.map((parameter) => SwaggerRequestParameter.fromJson(
                    parameter as Map<String, dynamic>))
                .toList() ??
            [],
        requests: value.map(
          (key, request) => MapEntry(
            key,
            SwaggerRequest.fromJson(request as Map<String, dynamic>),
          ),
        ),
      ),
    );
  });
}
