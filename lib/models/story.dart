class Story {
  final String title;
  final String url;
  final List<int> commentIds;
  Story({this.title, this.url, this.commentIds});

  factory Story.fromJson(Map<String, dynamic> json) {
    return Story(
        title: json["title"],
        url: json["url"],
        commentIds: json["kids"] == null ? [] : json["kids"].cast<int>());
  }
}
