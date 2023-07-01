
import 'package:app_rpg_demigods/main.dart';
import 'package:flutter/material.dart';

@immutable
class Player{
  final int id;
  final String name;
  final String team;
  final String school;
  final String position;
  final String height;
  final String image;

    factory Player.fromMap(Map<String, dynamic> json){
    return Player(
      name:  json['name'], 
      team: json['team'], 
      id: json['id'], 
      school: json['school'], 
      position: json['height'],
      height: json["height"]
      );
  }



 Player({
  this.id = 0,
  this.name = "", 
  this.team = "", 
  this.school = "", 
  this.position = "", 
  this.height = "", 
  this.image = ""

});




final List<String> qtdButtons =
['Name', 'Team', 'School', 'Position', 'Height'];



Player copyWith({
  int? id,
  String? name,
  String? team,
  String? school,
  String? position,
  String? height,
}){
return Player(
  id: id ?? this.id,
  name: name ?? this.name, 
  team: team ?? this.team, 
  school: school ?? this.school, 
  position: position ?? this.position, 
  height: height ?? this.height, 

);


  }
}