import 'package:flutter/material.dart';
import 'package:flutter_facebook_session2/widgets/story_widget.dart';

import '../utils/story_data_class.dart';
import 'create_story_widget.dart';

class StoryListWidget extends StatelessWidget {
  const new({super.key, required this.images});

  final List<StoryDataClass> images;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: SizedBox(
        height: 190,
        child: Expanded(
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return index == 0
                  ? CreateStoryWidget()
                  : StoryWidget(
                      profileImage: images[index].profileImage,
                      storyImage: images[index].storyImage,
                    );
            },
            separatorBuilder: (context, index) => SizedBox(width: 10),
            itemCount: images.length,
          ),
        ),
      ),
    );
  }
}
