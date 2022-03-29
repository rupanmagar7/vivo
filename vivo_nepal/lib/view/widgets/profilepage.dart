import 'package:flutter/material.dart';

class ProfileWidge extends StatelessWidget {
  const ProfileWidge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          Text("My Profile"),
        ],
      ),
    );
  }
}
