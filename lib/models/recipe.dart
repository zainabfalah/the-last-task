import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:hello_flutter/models/Ingredient.dart';

import 'instruction.dart';

class Recipe {
  String id;
  String cardType;
  String title;
  String subtitle;
  String backgroundImage;
  String backgroundImageSource;
  String message;
  String authorName;
  String role;
  String authorImage;
  int durationInMinutes;
  String dietType;
  int calories;
  List<String> tags;
  String description;
  String source;
  List<Ingredient> ingredients;
  List<Instruction> instructions;

  Recipe({
    required this.id,
    required this.cardType,
    required this.title,
    required this.subtitle,
    required this.backgroundImage,
    required this.backgroundImageSource,
    required this.message,
    required this.authorName,
    required this.role,
    required this.authorImage,
    required this.durationInMinutes,
    required this.dietType,
    required this.calories,
    required this.tags,
    required this.description,
    required this.source,
    required this.ingredients,
    required this.instructions,
  });

  Recipe copyWith({
    String? id,
    String? cardType,
    String? title,
    String? subtitle,
    String? backgroundImage,
    String? backgroundImageSource,
    String? message,
    String? authorName,
    String? role,
    String? authorImage,
    int? durationInMinutes,
    String? dietType,
    int? calories,
    List<String>? tags,
    String? description,
    String? source,
    List<Ingredient>? ingredients,
    List<Instruction>? instructions,
  }) {
    return Recipe(
      id: id ?? this.id,
      cardType: cardType ?? this.cardType,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      backgroundImage: backgroundImage ?? this.backgroundImage,
      backgroundImageSource:
          backgroundImageSource ?? this.backgroundImageSource,
      message: message ?? this.message,
      authorName: authorName ?? this.authorName,
      role: role ?? this.role,
      authorImage: authorImage ?? this.authorImage,
      durationInMinutes: durationInMinutes ?? this.durationInMinutes,
      dietType: dietType ?? this.dietType,
      calories: calories ?? this.calories,
      tags: tags ?? this.tags,
      description: description ?? this.description,
      source: source ?? this.source,
      ingredients: ingredients ?? this.ingredients,
      instructions: instructions ?? this.instructions,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'cardType': cardType,
      'title': title,
      'subtitle': subtitle,
      'backgroundImage': backgroundImage,
      'backgroundImageSource': backgroundImageSource,
      'message': message,
      'authorName': authorName,
      'role': role,
      'authorImage': authorImage,
      'durationInMinutes': durationInMinutes,
      'dietType': dietType,
      'calories': calories,
      'tags': tags,
      'description': description,
      'source': source,
      'ingredients': ingredients.map((x) => x.toMap()).toList(),
      'instructions': instructions.map((x) => x.toMap()).toList(),
    };
  }

  factory Recipe.fromMap(Map<String, dynamic> map) {
    return Recipe(
      id: map['id'],
      cardType: map['cardType'],
      title: map['title'],
      subtitle: map['subtitle'],
      backgroundImage: map['backgroundImage'],
      backgroundImageSource: map['backgroundImageSource'],
      message: map['message'],
      authorName: map['authorName'],
      role: map['role'],
      authorImage: map['authorImage'],
      durationInMinutes: map['durationInMinutes'],
      dietType: map['dietType'],
      calories: map['calories'],
      tags: List<String>.from(map['tags']),
      description: map['description'],
      source: map['source'],
      ingredients: List<Ingredient>.from(
          map['ingredients']?.map((x) => Ingredient.fromMap(x))),
      instructions: List<Instruction>.from(
          map['instructions']?.map((x) => Instruction.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Recipe.fromJson(String source) => Recipe.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Recipe(id: $id, cardType: $cardType, title: $title, subtitle: $subtitle, backgroundImage: $backgroundImage, backgroundImageSource: $backgroundImageSource, message: $message, authorName: $authorName, role: $role, authorImage: $authorImage, durationInMinutes: $durationInMinutes, dietType: $dietType, calories: $calories, tags: $tags, description: $description, source: $source, ingredients: $ingredients, instructions: $instructions)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Recipe &&
        other.id == id &&
        other.cardType == cardType &&
        other.title == title &&
        other.subtitle == subtitle &&
        other.backgroundImage == backgroundImage &&
        other.backgroundImageSource == backgroundImageSource &&
        other.message == message &&
        other.authorName == authorName &&
        other.role == role &&
        other.authorImage == authorImage &&
        other.durationInMinutes == durationInMinutes &&
        other.dietType == dietType &&
        other.calories == calories &&
        listEquals(other.tags, tags) &&
        other.description == description &&
        other.source == source &&
        listEquals(other.ingredients, ingredients) &&
        listEquals(other.instructions, instructions);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        cardType.hashCode ^
        title.hashCode ^
        subtitle.hashCode ^
        backgroundImage.hashCode ^
        backgroundImageSource.hashCode ^
        message.hashCode ^
        authorName.hashCode ^
        role.hashCode ^
        authorImage.hashCode ^
        durationInMinutes.hashCode ^
        dietType.hashCode ^
        calories.hashCode ^
        tags.hashCode ^
        description.hashCode ^
        source.hashCode ^
        ingredients.hashCode ^
        instructions.hashCode;
  }
}
