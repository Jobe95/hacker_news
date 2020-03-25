import 'package:flutter/material.dart';
import 'package:hacker_news/pages/home_page.dart';
import 'package:hacker_news/viewmodels/story_list_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Hacker News',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (context) => StoryListViewModel(),
        child: HomePage(),
      ),
    ),
  );
}
