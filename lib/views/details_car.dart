import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/custom_button_page_car.dart';
import '../widgets/custom_row_widget.dart';

class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/man.jpeg'),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('User Name', style: TextStyle(fontSize: 16)),
                Text('Advertiser', style: TextStyle(fontSize: 12)),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    Text('4.5', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.close, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Car_meter.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 10,
                        blurRadius: 10,
                        offset: Offset(0, -3),
                      ),
                    ]),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.9),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('80 USD',
                              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xff1F3672))),
                          Spacer(),
                          Icon(Icons.favorite_border, color: Colors.black, size: 24),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text('Tachometer', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          Spacer(),
                          Icon(Icons.star, color: Color(0xff1F3672)),
                          Icon(Icons.star, color: Color(0xff1F3672)),
                          Icon(Icons.star, color: Color(0xff1F3672)),
                          Icon(Icons.star, color: Color(0xff1F3672)),
                          Icon(Icons.star_half, color: Color(0xff1F3672)), // Half stars
                        ],
                      ), //with stars
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined, size: 24),
                          Text('Shiloh, Hawaii', style: TextStyle(fontSize: 14)),
                          SizedBox(width: 16),
                          Spacer(),
                          Text('Oct 10, 2023', style: TextStyle(fontSize: 14)),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomRowWidget(
                              text: 'Details',
                              description: '',
                            ),
                            Divider(
                              thickness: 3,
                              color: Colors.grey,
                            ),CustomRowWidget(
                              text: 'Brand:',
                              description: 'Elantra',
                            ),
                            Divider(
                              thickness: 3,
                              color: Colors.grey,
                            ),CustomRowWidget(
                              text: 'Year:',
                              description: '2018',
                            ),
                            Divider(
                              thickness: 3,
                              color: Colors.grey,
                            ),CustomRowWidget(
                              text: 'Type:',
                              description: 'Used',
                            ),
                            Divider(
                              thickness: 3,
                              color: Colors.grey,
                            ),CustomRowWidget(
                              text: 'Made In:',
                              description: 'South Korea',
                            ),
                            Divider(
                              thickness: 3,
                              color: Colors.grey,
                            ),CustomRowWidget(
                              text: 'Guarantee:',
                              description: '1 Month',
                            ),
                            Divider(
                              thickness: 3,
                              color: Colors.grey,
                            ),CustomRowWidget(
                              text: 'Copy/Original',
                              description: 'Original',
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomBottom(
                icon: Icons.shopping_cart_outlined,
                text: 'Add to cart',
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomBottom(
                      icon: Icons.phone_outlined,
                      text: 'Call',
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CustomBottom(
                      icon: FontAwesomeIcons.message,
                      text: 'SMS',
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CustomBottom(
                      icon: FontAwesomeIcons.facebookMessenger,
                      text: 'Chat',
                    ),
                  ),
                
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}


