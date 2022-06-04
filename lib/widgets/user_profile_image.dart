import 'package:flutter/material.dart';
import 'package:fullter_app_3/data.dart';

class UserProfileImage extends StatelessWidget {
  final String imageURL;
  final double size;

  const UserProfileImage({
    Key? key,
    required this.imageURL,
    this.size = 70,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2 - size / 8),
      child: Image.network(
        imageURL,
        width: size,
        height: size,
        fit: BoxFit.cover,
      ),
    );
  }
}
