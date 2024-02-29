import 'package:json_annotation/json_annotation.dart';

part 'story.g.dart';

// flutter pub run build_runner build';
@JsonSerializable(explicitToJson: true)
class Story {
  String? id;
  String? title;
  String? author;
  String? description;
  List<String>? genres;
  String? imageUrl;
  String? pdfUrl;
  List<Chapter> chapters;
  Story({
    this.id,
    this.title,
    this.author,
    this.description,
    this.genres,
    this.imageUrl,
    this.pdfUrl,
    this.chapters = const [],
  });
  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);
  Map<String, dynamic> toJson() => _$StoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Chapter {
  int? chapterNumber;
  String? title;
  String? content;
  List<Section>? sections;

  Chapter({
    this.chapterNumber,
    this.title,
    this.content,
    this.sections,
  });
  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);
  Map<String, dynamic> toJson() => _$ChapterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Section {
  String? title;
  String? content;
  Section({
    this.title,
    this.content,
  });
  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);
  Map<String, dynamic> toJson() => _$SectionToJson(this);
}

class StorySummary {
  String? title;
  String? author;
  String? imageUrl;
  List<Section>? sections;
  StorySummary({
    this.title,
    this.author,
    this.imageUrl,
    this.sections,
  });
}
