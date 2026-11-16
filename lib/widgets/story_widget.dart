import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  StoryWidget({super.key,required this.profileImage,required this.storyImage});
  String profileImage;
  String storyImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(storyImage,width: 120,height: 200,fit: BoxFit.cover,),
        ),
        Padding(
          padding: EdgeInsetsGeometry.all(6),
          child: Image.asset(profileImage),
        ),
      ],
    );
  }
}
