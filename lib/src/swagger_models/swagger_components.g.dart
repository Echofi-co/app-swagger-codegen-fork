// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger_components.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SwaggerComponents _$SwaggerComponentsFromJson(Map<String, dynamic> json) {
  return SwaggerComponents(
    parameters: (json['parameters'] as List<dynamic>?)
            ?.map((e) =>
                SwaggerRequestParameter.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$SwaggerComponentsToJson(SwaggerComponents instance) =>
    <String, dynamic>{
      'parameters': instance.parameters,
    };
