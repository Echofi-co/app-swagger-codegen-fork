import 'package:swagger_dart_code_generator/src/code_generators/swagger_additions_generator.dart';
import 'package:swagger_dart_code_generator/src/code_generators/swagger_enums_generator.dart';
import 'package:swagger_dart_code_generator/src/code_generators/swagger_models_generator.dart';
import 'package:swagger_dart_code_generator/src/code_generators/swagger_requests_generator.dart';
import 'package:swagger_dart_code_generator/src/models/generator_options.dart';

class SwaggerCodeGenerator {
  String generateIndexes(
          String dartCode, Map<String, List<String>> buildExtensions) =>
      _getSwaggerAdditionsGenerator(dartCode).generateIndexes(buildExtensions);

  String generateConverterMappings(String dartCode,
          Map<String, List<String>> buildExtensions, bool hasModels) =>
      _getSwaggerAdditionsGenerator(dartCode)
          .generateConverterMappings(buildExtensions, hasModels);

  String generateImportsContent(String dartCode, String swaggerFileName,
          bool hasModels, bool buildOnlyModels, bool hasEnums) =>
      _getSwaggerAdditionsGenerator(dartCode).generateImportsContent(
          swaggerFileName, hasModels, buildOnlyModels, hasEnums);

  String generateEnums(String dartCode, String fileName) =>
      SwaggerEnumsGenerator().generate(dartCode, fileName);

  String generateModels(
          String dartCode, String fileName, GeneratorOptions options) =>
      SwaggerModelsGenerator().generate(dartCode, fileName, options);

  String generateRequests(String dartCode, String className, String fileName,
          GeneratorOptions options) =>
      SwaggerRequestsGenerator().generate(
        code: dartCode,
        className: className,
        fileName: fileName,
        options: options,
      );

  String generateCustomJsonConverter(
          String dartCode, String fileName, bool hasModels) =>
      _getSwaggerAdditionsGenerator(dartCode)
          .generateCustomJsonConverter(fileName, hasModels);

  String generateDateToJson(String dartCode) =>
      _getSwaggerAdditionsGenerator(dartCode).generateDateToJson();

  SwaggerAdditionsGenerator _getSwaggerAdditionsGenerator(String dartCode) =>
      SwaggerAdditionsGenerator();
}
