import 'package:flutter/material.dart';
import 'package:fullter_app_3/constants/colors.dart';
import 'package:fullter_app_3/data.dart';
import 'package:fullter_app_3/screens/home_page.dart';
import 'package:fullter_app_3/widgets/room_card.dart';
import 'package:fullter_app_3/widgets/user_profile_image.dart';
import 'package:iconsax/iconsax.dart';

import '../models/room.dart';

class RoomScreen extends StatelessWidget {
  final Room room;

  const RoomScreen({
    Key? key,
    required this.room,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Iconsax.backward),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              fullscreenDialog: true,
              builder: (_) => HomeScreen(),
            ));
          },
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
      body: Container(),
    );
  }
}
