// TODO: Qual a necessidade de ter outra classe para representar o modelo?
// TODO: Por quê não podemos ter somente uma classe entity ou model?

import 'dart:convert';

class TemplateModel {
  final String url;
  final String name;
  final String mass;
  final String height;

  TemplateModel(this.url, this.name, this.mass, this.height);

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
      map['url'],
      map['name'],
      map['mass'],
      map['height'],
    );
  }

  String toJson() => json.encode(toMap());

  factory TemplateModel.fromJson(String source) => TemplateModel.fromMap(json.decode(source));
}
