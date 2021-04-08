// TODO: Qual a necessidade de ter outra classe para representar o modelo?
// TODO: Por quê não podemos ter somente uma classe entity ou model?

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_dojo/app/domain/template/entities/template_entity.dart';

class TemplateModel extends TemplateEntity {
  TemplateModel(
      {@required String height,
      @required String url,
      @required String mass,
      @required String name})
      : super(height: height, url: url, mass: mass, name: name);

  Map<String, dynamic> toMap() {
    return {
      'url': url,
      'name': name,
      'mass': mass,
      'height': height,
    };
  }

  factory TemplateModel.fromMap(Map<String, dynamic> map) {
    return TemplateModel(
      url: map['url'],
      name: map['name'],
      mass: map['mass'],
      height: map['height'],
    );
  }

  String toJson() => json.encode(toMap());

  factory TemplateModel.fromJson(String source) =>
      TemplateModel.fromMap(json.decode(source));
}
