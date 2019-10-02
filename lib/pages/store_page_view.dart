import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List<StoryItem> storyItems = [
      StoryItem.text('''If you do not make time for your wellness,
you will be forced to make time for your illness.
#ReadThatAgain''', Colors.red),
      StoryItem.pageImage(NetworkImage(
          "https://images.unsplash.com/photo-1541233349642-6e425fe6190e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80")),
      StoryItem.pageGif(
          "https://techcrunch.com/wp-content/uploads/2015/08/safe_image.gif",
          imageFit: BoxFit.contain)
    ];
    return Material(
      child: StoryView(
        storyItems,
        controller: controller,
        inline: false,
        repeat: true,
      ),
    );
  }
}
