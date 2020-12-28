import 'package:flutter/material.dart';
import 'package:hacker_news/view_models/comment_list_view_model.dart';
import 'package:hacker_news/view_models/story_view_model.dart';
import 'package:hacker_news/widgets/comment_list.dart';
import 'package:provider/provider.dart';

class CommentListPage extends StatefulWidget {
  final StoryViewModel story;
  const CommentListPage({Key key, @required this.story}) : super(key: key);

  @override
  _CommentListPageState createState() => _CommentListPageState();
}

class _CommentListPageState extends State<CommentListPage> {
  @override
  void initState() {
    super.initState();
    Provider.of<CommentListViewModel>(context, listen: false)
        .getCommentByStoryId(this.widget.story);
  }

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<CommentListViewModel>(context);
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(this.widget.story.title),
        ),
        body: CommentList(
          comments: vm.comments,
        ),
      ),
    );
  }
}
