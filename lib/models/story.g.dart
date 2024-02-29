// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Story _$StoryFromJson(Map<String, dynamic> json) => Story(
      id: json['id'] as String?,
      title: json['title'] as String?,
      author: json['author'] as String?,
      description: json['description'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      imageUrl: json['imageUrl'] as String?,
      pdfUrl: json['pdfUrl'] as String?,
      isFavorite: json['isFavorite'] as bool? ?? false,
    );

Map<String, dynamic> _$StoryToJson(Story instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'description': instance.description,
      'genres': instance.genres,
      'imageUrl': instance.imageUrl,
      'pdfUrl': instance.pdfUrl,
      'isFavorite': instance.isFavorite,
    };
