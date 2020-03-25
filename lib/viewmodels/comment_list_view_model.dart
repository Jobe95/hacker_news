import 'package:flutter/material.dart';
import 'package:hacker_news/services/webservice.dart';
import 'package:hacker_news/viewmodels/comment_view_model.dart';
import 'package:hacker_news/viewmodels/story_view_model.dart';

class CommentListViewModel extends ChangeNotifier {
  List<CommentViewModel> comments = List<CommentViewModel>();

  void getCommentsByStory(StoryViewModel storyVM) async {
    final results = await WebService().getCommentsByStory(storyVM.story);
    comments = results.map((item) => CommentViewModel(comment: item)).toList();

    notifyListeners();
  }
}
