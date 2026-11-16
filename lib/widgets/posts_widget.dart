import 'package:flutter/material.dart';

class PostsWidgets extends StatelessWidget {
  new({super.key,required this.postImageUrl,required this.profileImageUrl});
  String profileImageUrl;
  String postImageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset(profileImageUrl),
          title: Text(
            "Route",
            style: TextStyle(
              fontWeight: .w500,
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          subtitle: Row(children: [Image.asset("assets/images/time.png")]),
          trailing: Image.asset("assets/images/more.png", height: 14),
        ),
        Image.asset(postImageUrl),
        ListTile(
          title: Row(
            children: [
              Image.asset("assets/icons/heart-2.png", width: 24, height: 24),
              const SizedBox(width: 10),
              Image.asset("assets/icons/Chat_Dots.png", width: 24, height: 24),
              const SizedBox(width: 10),
              Image.asset(
                "assets/icons/Paper_Plane.png",
                width: 24,
                height: 24,
              ),
            ],
          ),
          trailing: Image.asset(
            "assets/icons/Bookmark.png",
            width: 24,
            height: 24,
          ),
        ),
      ],
    );
  }
}
