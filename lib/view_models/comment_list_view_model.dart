import 'package:flutter/material.dart';
import 'package:hacker_news/services/webservice.dart';
import 'package:hacker_news/view_models/comment_view_model.dart';
import 'package:hacker_news/view_models/story_view_model.dart';

class CommentListViewModel extends ChangeNotifier {
  List<CommentViewModel> comments = [];
  Future<void> getCommentByStoryId(StoryViewModel storyVM) async {
    final results = await WebService().getCommentsByStory(storyVM.story);
    comments =
        results.map((comment) => CommentViewModel(comment: comment)).toList();
    notifyListeners();
  }
}
