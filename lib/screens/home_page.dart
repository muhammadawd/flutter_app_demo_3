import 'package:flutter/material.dart';
import 'package:fullter_app_3/constants/colors.dart';
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
          icon: Icon(Iconsax.home),
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
      body: Stack(
        alignment: Alignment.center,
        children: [
          ListView(
            padding: EdgeInsets.all(4),
            children: [
              ...RoomList.map((room) => RoomCard(room: room)),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    KWhiteColor.withOpacity(0),
                    KWhiteColor.withOpacity(0.7),
                    KWhiteColor
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Iconsax.play),
              label: Text(
                ' Start Room ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(12),
                primary: KPrimaryAltColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
