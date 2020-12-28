import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hacker_news/view_models/comment_view_model.dart';
import 'package:html_unescape/html_unescape.dart';

class CommentList extends StatelessWidget {
  CommentList({Key key, @required this.comments}) : super(key: key);
  final List<CommentViewModel> comments;
  final unescape = new HtmlUnescape();

  String _formatCommentText(String text) {
    final formattedText = unescape.convert(text ?? "");
    return formattedText.isNotEmpty
        ? formattedText.substring(0, min(200, formattedText.length))
        : "";
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: comments.length,
      itemBuilder: (context, index) {
        var comment = comments[index];
        return ListTile(
          leading: Container(
              height: 30,
              width: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "${index + 1}",
                style: TextStyle(color: Colors.white),
              )),
          title: Text(_formatCommentText(comment.title)),
        );
      },
    );
  }
}
