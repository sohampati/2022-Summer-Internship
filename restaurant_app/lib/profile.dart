import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: BackButton(
        color: Colors.grey,
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        IconButton(onPressed: onPressed, icon: icon)
      ],
    );
  }
}

