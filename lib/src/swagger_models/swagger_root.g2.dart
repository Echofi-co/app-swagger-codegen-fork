// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger_root.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SwaggerRoot _$SwaggerRootFromJson(Map<String, dynamic> json) => SwaggerRoot(
      info: json['info'] == null
          ? null
          : SwaggerInfo.fromJson(json['info'] as Map<String, dynamic>),
      host: json['host'] as String? ?? '',
      basePath: json['basePath'] as String? ?? '',
      tags: (json['tags'] as List<dynamic>?)
              ?.map((e) => SwaggerTag.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      schemes: (json['schemes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      paths: json['paths'] == null
          ? const {}
          : _mapPaths(json['paths'] as Map<String, dynamic>?),
      definitions: (json['definitions'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, SwaggerSchema.fromJson(e as Map<String, dynamic>)),
          ) ??
          const {},
      parameters: (json['parameters'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k, SwaggerRequestParameter.fromJson(e as Map<String, dynamic>)),
          ) ??
          const {},
      components: json['components'] == null
          ? null
          : SwaggerComponents.fromJson(
              json['components'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SwaggerRootToJson(SwaggerRoot instance) =>
    <String, dynamic>{
      'info': instance.info,
      'host': instance.host,
      'basePath': instance.basePath,
      'tags': instance.tags,
      'schemes': instance.schemes,
      'paths': instance.paths,
      'definitions': instance.definitions,
      'parameters': instance.parameters,
      'components': instance.components,
      'securityDefinitions': instance.securityDefinitions,
    };
