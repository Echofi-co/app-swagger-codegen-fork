const List<String> successResponseCodes = [
  '200',
  '201',
];

const List<String> kKeyClasses = ['Response', 'Request'];
const kBasicTypes = [
  'string',
  'int',
  'integer',
  'double',
  'float',
  'bool',
  'boolean',
  'number',
];

const kChopperService = 'ChopperService';
const kChopperApi = 'ChopperApi';
const kResponse = 'Response';

const kPath = 'path';

const kDefaultBodyParameter = 'Object';
const kRequestTypeOptions = 'options';

const successDescriptions = ['Success', 'OK', 'default response'];

const kBasicTypesMap = <String, String>{
  'integer': 'int',
  'int': 'int',
  'boolean': 'bool',
  'bool': 'bool',
  'string': 'String',
  'file': 'List<String>',
  'number': 'num',
  'object': 'Object',
};

const kObject = 'object';
const kHeader = 'header';
const kArray = 'array';
const kEnum = 'enum';

const kServiceHeader = '''
// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************
  ''';