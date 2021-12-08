import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/models/models.dart';
import 'widgets.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({
    Key key,
    @required this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12, 8, 12, 0),
      color: Colors.white,
      child: Column(
        children: [
          // USER ICON, TEXT FIELD
          Row(
            children: [
              ProfileAvatar(imageUrl: currentUser.imageUrl),
              const SizedBox(width: 8,),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(hintText: "What\'s on your mind ?"),
                ),
              )
            ],
          ),
          const Divider(height: 10, thickness: 0.5,),


          // LIVE, PHOTOS, ROOM
          Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  onPressed: () => print("Live cam"),
                  icon: Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                  label: Text("Live"),
                ),
                const VerticalDivider(width: 8,),
                TextButton.icon(
                  onPressed: () => print("Photos"),
                  icon: Icon(
                    Icons.photo_library,
                    color: Colors.green,
                  ),
                  label: Text("Photos"),
                ),
                const VerticalDivider(width: 8,),
                TextButton.icon(
                  onPressed: () => print("Video call"),
                  icon: Icon(
                    Icons.video_call,
                    color: Colors.purpleAccent,
                  ),
                  label: Text("Room"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
