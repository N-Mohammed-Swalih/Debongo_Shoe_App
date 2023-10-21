import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../models/cart.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var buttonname = [
    "Edit Profile",
    "Saved Address",
    "Select Language",
    "Notification Settings",
    "Invite a friend",
    "Help and support",
    "Terms,Policies and Licenses"
  ];
  var icons = [
    Icons.edit,
    Icons.map,
    Icons.language,
    Icons.notifications,
    Icons.people,
    Icons.help,
    Icons.pages
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            //heading of the page
            Text(
              "My Profile",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://i.guim.co.uk/img/media/fd9b9ed4d416bd1867fe356e49975b9527c26765/0_59_2588_1553/master/2588.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=9524bc6ee58b97a7230c38228afaecec"),
                minRadius: 50,
                maxRadius: 70,
              ),
            ),
            SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Colors.blue,
                      size: 40,
                    ),
                    onPressed: () {}),
                SizedBox(
                  width: 20,
                ),
                IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.google,
                      color: Colors.red,
                      size: 40,
                    ),
                    onPressed: () {}),
                SizedBox(
                  width: 20,
                ),
                IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Colors.blueAccent,
                      size: 40,
                    ),
                    onPressed: () {}),
                SizedBox(
                  width: 20,
                ),
                IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.blueAccent,
                      size: 40,
                    ),
                    onPressed: () {}),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Sundar Pichai",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text("Ceo of Alpahbet Inc"),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: SingleChildScrollView(
                  child: Column(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[300],
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.edit,
                          color: Colors.black,
                        ),
                        Text(
                          "Edit Profile",
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[300],
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.notifications,
                          color: Colors.black,
                        ),
                        Text(
                          "Notification Settings",
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[300],
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.settings,
                          color: Colors.black,
                        ),
                        Text(
                          "Account Settings",
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[300],
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.language,
                          color: Colors.black,
                        ),
                        Text(
                          "Select Language",
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[300],
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.map,
                          color: Colors.black,
                        ),
                        Text(
                          "Saved Addresses",
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ])),
            )
          ])),
    );
  }
}
