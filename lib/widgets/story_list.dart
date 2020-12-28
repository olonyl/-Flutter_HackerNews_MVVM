import 'package:flutter/material.dart';
import 'package:hacker_news/view_models/story_view_model.dart';

class StoryList extends StatelessWidget {
  const StoryList({Key key, @required this.stories, @required this.onSelected})
      : super(key: key);
  final List<StoryViewModel> stories;
  final Function(StoryViewModel) onSelected;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: stories.length,
      itemBuilder: (context, index) {
        final story = stories[index];
        return ListTile(
          onTap: () {
            //perform navigation
            this.onSelected(story);
          },
          title: Text(
            story.title,
            style: TextStyle(fontSize: 20),
          ),
          trailing: Container(
              alignment: Alignment.center,
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                "${story.noOfComments}",
                style: TextStyle(color: Colors.white),
              )),
        );
      },
    );
  }
}
