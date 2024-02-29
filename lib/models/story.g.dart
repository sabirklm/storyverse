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
      chapters: (json['chapters'] as List<dynamic>?)
              ?.map((e) => Chapter.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$StoryToJson(Story instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'description': instance.description,
      'genres': instance.genres,
      'imageUrl': instance.imageUrl,
      'pdfUrl': instance.pdfUrl,
      'chapters': instance.chapters.map((e) => e.toJson()).toList(),
    };

Chapter _$ChapterFromJson(Map<String, dynamic> json) => Chapter(
      chapterNumber: json['chapterNumber'] as int?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => Section.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChapterToJson(Chapter instance) => <String, dynamic>{
      'chapterNumber': instance.chapterNumber,
      'title': instance.title,
      'content': instance.content,
      'sections': instance.sections?.map((e) => e.toJson()).toList(),
    };

Section _$SectionFromJson(Map<String, dynamic> json) => Section(
      title: json['title'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$SectionToJson(Section instance) => <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
    };
