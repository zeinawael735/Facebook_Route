import 'package:flutter/material.dart';
import 'package:flutter_facebook_session2/utils/story_data_class.dart';

import '../widgets/posts_widget.dart';
import '../widgets/story_list_widget.dart';

class FacebookFeedsScreen extends StatelessWidget {
  FacebookFeedsScreen({super.key});
  static String routeName = "FacebookFeedsScreen";
  List<StoryDataClass> images = [
    StoryDataClass(
      storyImage: "assets/images/world_cup.png",
      profileImage: "assets/images/goat.png",
    ),
    StoryDataClass(
      storyImage: "assets/images/lamine_yamal.png",
      profileImage: "assets/images/messi_profile.png",
    ),
    StoryDataClass(
      storyImage: "assets/images/fcb.png",
      profileImage: "assets/images/fcb_profile.png",
    ),
    StoryDataClass(
      storyImage: "assets/images/world_cup.png",
      profileImage: "assets/images/goat.png",
    ),
    StoryDataClass(
      storyImage: "assets/images/lamine_yamal.png",
      profileImage: "assets/images/messi_profile.png",
    ),
    StoryDataClass(
      storyImage: "assets/images/fcb.png",
      profileImage: "assets/images/fcb_profile.png",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Facebook",
            style: TextStyle(
              fontSize: 30,
              fontWeight: .w800,
              color: Color(0xFF1877F2),
            ),
          ),
          actions: [
            Image.asset("assets/icons/Plus.png"),
            SizedBox(width: 10),
            Image.asset("assets/icons/Search.png"),
            SizedBox(width: 10),
            Image.asset("assets/icons/Messenger.png"),
            SizedBox(width: 10),
          ],
          bottom: TabBar(
            indicatorColor: const Color(0xFF1877F2),
            indicatorWeight: 3.0,

            labelColor: const Color(0xFF1877F2),

            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(child: Icon(Icons.home_rounded)),
              Tab(child: Icon(Icons.ondemand_video)),
              Tab(child: Icon(Icons.storefront_outlined)),
              Tab(child: Icon(Icons.notifications_outlined)),
              Tab(child: Image.asset("assets/icons/Ellipse 1.png")),
            ],
          ),
        ),
        
        body: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  prefixIcon: Image.asset("assets/icons/Ellipse 2.png"),
                  suffixIcon: Image.asset("assets/icons/images.png"),
                  hintText: "What’s in Your Mind?",
                  hintStyle: TextStyle(
                    fontWeight: .w500,
                    fontSize: 16,
                    color: Color(0xff898F9C),
                  ),
                ),
              ),
              StoryListWidget(images: images),
              Divider(),
          
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => PostsWidgets(postImageUrl: 'assets/images/route.png', profileImageUrl: 'assets/images/Route_post.png',),
                separatorBuilder: (context, index) => SizedBox(height: 20),
                itemCount: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
