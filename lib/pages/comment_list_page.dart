import 'package:flutter/material.dart';
import 'package:hacker_news/viewmodels/comment_list_view_model.dart';
import 'package:hacker_news/viewmodels/story_view_model.dart';
import 'package:hacker_news/widgets/comment_list.dart';
import 'package:provider/provider.dart';

class CommentListPage extends StatefulWidget {
  final StoryViewModel story;
  CommentListPage({this.story});

  @override
  _CommentListPageState createState() => _CommentListPageState();
}

class _CommentListPageState extends State<CommentListPage> {
  @override
  void initState() {
    super.initState();
    Provider.of<CommentListViewModel>(context, listen: false)
        .getCommentsByStory(widget.story);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.story.title),
      ),
      body: Consumer<CommentListViewModel>(
        builder: (context, vm, child) {
          return CommentList(
            comments: vm.comments,
          );
        },
      ),
    );
  }
}
