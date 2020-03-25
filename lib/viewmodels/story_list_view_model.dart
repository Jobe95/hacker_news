import 'package:flutter/material.dart';
import 'package:hacker_news/services/webservice.dart';
import 'package:hacker_news/viewmodels/story_view_model.dart';

class StoryListViewModel extends ChangeNotifier {
  List<StoryViewModel> stories = List<StoryViewModel>();

  Future<void> getTopStories() async {
    final Iterable results = await WebService().getTopStories();
    stories = results.map((story) => StoryViewModel(story: story)).toList();
    notifyListeners();
  }
}
