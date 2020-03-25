import 'package:hacker_news/models/sory.dart';

class StoryViewModel {
  final Story story;

  StoryViewModel({this.story});

  String get title {
    return story.title;
  }

  String get url {
    return story.url;
  }

  int get numberOfComments {
    return story.commentIds.length;
  }
}
