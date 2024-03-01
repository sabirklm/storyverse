import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:storyverse/models/story.dart';

class StoryService {
  final _storyRef = 'assets/data/stories.json';
  Future<List<Story>> getStories() async {
    var data = await rootBundle.loadString(_storyRef);
    var jsonData = jsonDecode(data) as List;
    var stories = jsonData.map((e) => Story.fromJson(e)).toList();
    return stories;
  }
}
