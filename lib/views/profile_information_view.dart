import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/profile_information_body.dart';

class ProfileInformationView extends StatelessWidget {
  const ProfileInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.black),
          onPressed: () {},
        ),
        title: Text(
          "Profile Information",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,

      ),
      body:  ProfileInformationBody(),
    );
  }
}