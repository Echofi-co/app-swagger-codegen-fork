// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SwaggerResponse _$SwaggerResponseFromJson(Map<String, dynamic> json) {
  return SwaggerResponse(
    description: json['description'] as String? ?? '',
    type: json['type'] as String? ?? '',
    schema: json['schema'] == null
        ? null
        : ResponseSchema.fromJson(json['schema'] as Map<String, dynamic>),
    enumValue: (json['enumValue'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
    content: (json['content'] as List<dynamic>?)
            ?.map((e) => Content.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    ref: json['ref'] as String? ?? '',
  );
}

Map<String, dynamic> _$SwaggerResponseToJson(SwaggerResponse instance) =>
    <String, dynamic>{
      'ref': instance.ref,
      'description': instance.description,
      'type': instance.type,
      'schema': instance.schema,
      'enumValue': instance.enumValue,
      'content': instance.content,
    };

Content _$ContentFromJson(Map<String, dynamic> json) {
  return Content(
    items: json['items'] == null
        ? null
        : ItemSchema.fromJson(json['items'] as Map<String, dynamic>),
    ref: json['ref'] as String? ?? '',
    responseType: json['responseType'] as String? ?? '',
    type: json['type'] as String? ?? '',
  );
}

Map<String, dynamic> _$ContentToJson(Content instance) => <String, dynamic>{
      'responseType': instance.responseType,
      'type': instance.type,
      'items': instance.items,
      'ref': instance.ref,
    };
