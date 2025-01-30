import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Custom_Text_Field.dart';
import 'Custom_button.dart';

class ProfileInformationBody extends StatelessWidget {
  const ProfileInformationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child:
          Expanded(
            child: ListView(// Optional: adds padding around the list
              children: [
                SizedBox(height: 20),
                Center(
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      ClipOval(
                        child: Image.asset(
                          "assets/man.jpeg",
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        ),),
                      Icon(Icons.add_a_photo_outlined, color: Colors.deepPurple,
                          size: 30),

                    ],
                  ),
                ),

                SizedBox(height: 5),
                Center(child: Text("Edit", style: TextStyle(color: Colors.deepPurple))),

                SizedBox(height: 10),
                CustomTextField(hint: "Name"),
                SizedBox(height: 10),
                DropdownButtonFormField<String>(
                  items: ["Male", "Female"].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    hintText: "Gender",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                CustomTextField(hint: "Gender"),
                CustomTextField(hint: "Email"),
                CustomTextField(hint: "Password"),
                CustomTextField(hint: "Phone Number"),
                SizedBox(height: 20),
                CustomButton(text: 'Save'),
              ],
            ),
          )


    );
  }


}