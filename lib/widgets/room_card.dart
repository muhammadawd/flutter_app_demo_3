import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fullter_app_3/constants/colors.dart';
import 'package:fullter_app_3/widgets/user_profile_image.dart';
import 'package:iconsax/iconsax.dart';

import '../models/room.dart';

class RoomCard extends StatelessWidget {
  final Room room;

  const RoomCard({Key? key, required this.room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                room.club.toUpperCase(),
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 12.0,
                      color: KSecondaryColor,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.0,
                    ),
              ),
            ),
            Text(
              room.name.toUpperCase(),
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      child: Stack(
                        children: [
                          UserProfileImage(
                              imageURL: room.speakers[1].imageURL, size: 55),
                          Positioned(
                            left: 15,
                            top: 20,
                            child: UserProfileImage(
                                imageURL: room.speakers[0].imageURL, size: 70),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...room.speakers.map(
                            (speaker) => Text(
                              "${speaker.firstName} ${speaker.lastName}",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text.rich(
                              TextSpan(children: [
                                TextSpan(
                                    text:
                                        "${room.speakers.length + room.followedBySpeakers.length + room.others.length} "),
                                WidgetSpan(
                                  child: Icon(
                                    Iconsax.user,
                                    size: 18,
                                    color: KDarkColor,
                                  ),
                                ),
                                TextSpan(
                                    text:
                                        " | ${room.speakers.length} "),
                                WidgetSpan(
                                  child: Icon(
                                    Iconsax.chart,
                                    size: 18,
                                    color: KDarkColor,
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
