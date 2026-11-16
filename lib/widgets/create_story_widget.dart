import 'package:flutter/material.dart';

class CreateStoryWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [
              Image.asset("assets/images/create_story.png", fit: BoxFit.cover),

              Positioned(
                bottom: -18,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 3),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Color(0xFF1877F2),
                    radius: 18,
                    child: Icon(Icons.add, color: Colors.white, size: 22),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 22),

          Text(
            "Create a\nStory",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
