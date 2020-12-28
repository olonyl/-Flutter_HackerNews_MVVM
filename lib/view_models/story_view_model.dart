import 'package:hacker_news/models/story.dart';

class StoryViewModel {
  final Story story;
  StoryViewModel({this.story});

  String get title {
    return story.title;
  }

  String get url {
    return story.url;
  }

  int get noOfComments {
    return story.commentIds.length;
  }
}
