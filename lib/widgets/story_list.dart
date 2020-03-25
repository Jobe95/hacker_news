import 'package:flutter/material.dart';
import 'package:hacker_news/viewmodels/story_view_model.dart';

class StoryList extends StatelessWidget {
  final List<StoryViewModel> stories;
  final Function(StoryViewModel) onSelected;

  StoryList({this.stories, this.onSelected});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: stories.length,
      itemBuilder: (context, index) {
        final story = stories[index];
        return ListTile(
          onTap: () {
            this.onSelected(story);
          },
          title: Text(story.title, style: TextStyle(fontSize: 20)),
          trailing: Container(
            alignment: Alignment.center,
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text('${story.numberOfComments}',
                style: TextStyle(color: Colors.white)),
          ),
        );
      },
    );
  }
}
