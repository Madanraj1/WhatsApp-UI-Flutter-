import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/story_view.dart';

class StoryPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final storyController = StoryController();
    final List<StoryItem> storyItems = [
      StoryItem.text(title: "hello", backgroundColor: Colors.purple),
      StoryItem.pageImage(
          url:
              "https://images.pexels.com/photos/1933873/pexels-photo-1933873.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
          controller: storyController),
      StoryItem.pageVideo(
          "https://player.vimeo.com/external/210743871.sd.mp4?s=3865a7cba94d510a1f2211e4cf39e6577f6cb798&profile_id=164&oauth2_token_id=57447761",
          controller: storyController)
    ];
    return Material(
      child: StoryView(
        storyItems: storyItems,
        controller: storyController,
        inline: false,
        repeat: true,
      ),
    );
  }
}
