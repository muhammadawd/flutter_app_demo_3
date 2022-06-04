import 'package:flutter/material.dart';
import 'package:fullter_app_3/data.dart';
import 'package:fullter_app_3/widgets/room_card.dart';
import 'package:fullter_app_3/widgets/user_profile_image.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Iconsax.search_normal_1),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Iconsax.message),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Iconsax.calendar),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Iconsax.alarm),
            onPressed: () {},
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: UserProfileImage(
                imageURL: currentUser.imageURL,
                size: 40,
              ),
            ),
          )
        ],
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.all(4),
          children: [
            ...RoomList.map((room) => RoomCard(room:room)),
          ],
        ),
      ),
    );
  }
}
