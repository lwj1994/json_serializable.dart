// @author luwenjie on 06/01/2025 23:20:17

import 'package:json_annotation/json_annotation.dart';
import 'package:source_gen_test/annotations.dart';

@ShouldGenerate(r'''
GeneralTestClass3 _$GeneralTestClass3FromJson(Map<String, dynamic> json) =>
    GeneralTestClass3(
      int.tryParse((json['height']).toString()) ?? 0,
      (json['firstName']).toString(),
      (json['lastName'])?.toString(),
    )..dateOfBirth = DateTime.parse(json['dateOfBirth'] as String);

Map<String, dynamic> _$GeneralTestClass3ToJson(GeneralTestClass3 instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'height': instance.height,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
    };
''')
@JsonSerializable()
class GeneralTestClass3 {
  final String firstName;
  final String? lastName;
  late int height;
  late DateTime dateOfBirth;

  GeneralTestClass3(this.height, String firstName, [this.lastName])
      :
        // ignore: prefer_initializing_formals
        firstName = firstName;
}
