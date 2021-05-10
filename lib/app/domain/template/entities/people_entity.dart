import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class PeopleEntity extends Equatable {
  final String url;
  final String name;
  final String mass;
  final String height;

  PeopleEntity({
    @required this.url,
    @required this.name,
    @required this.mass,
    @required this.height,
  });

  @override
  List<Object> get props => [url, name, mass, height];

  String get urlImage{

    final urlSplit = this.url.split('/',);
     final index = urlSplit[urlSplit.length - 2];
    return 'https://starwars-visualguide.com/assets/img/characters/$index.jpg';
  } 
}
