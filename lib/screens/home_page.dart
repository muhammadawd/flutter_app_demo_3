import 'package:flutter/material.dart';
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
          )
        ],
      ),
      body: Container(),
    );
  }
}
