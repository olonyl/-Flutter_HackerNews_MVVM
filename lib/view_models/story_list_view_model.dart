import 'package:flutter/material.dart';
import 'package:hacker_news/services/webservice.dart';
import 'package:hacker_news/view_models/story_view_model.dart';

class StoryListViewModel extends ChangeNotifier {
  List<StoryViewModel> stories = [];
  Future<void> getTopStories() async {
    final results = await WebService().getTopStories();
    stories = results.map((story) => StoryViewModel(story: story)).toList();
    notifyListeners();
  }
}
