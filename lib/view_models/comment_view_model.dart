import 'package:hacker_news/models/comment.dart';

class CommentViewModel {
  final Comment comment;
  CommentViewModel({this.comment});

  String get title {
    return comment.title;
  }

  int get commentId {
    return comment.commentId;
  }
}
