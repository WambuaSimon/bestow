import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var appBarHeight = MediaQuery.of(context).size.height * 1 / 5;
    return SafeArea(
      child: Scaffold(
          body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: appBarHeight,
            decoration: const BoxDecoration(
              color: Color(0xff209fa5),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.only(left: 15.0, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color(0xffF5F5F5),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Badge(
                    badgeContent: const Text(
                      "2",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    badgeColor: Colors.red,
                    child: const Icon(
                      Icons.favorite,
                      color: Color(0xff209fa5),
                      size: 20,
                    ),
                  ),
                ),
                const SizedBox(width: 30,),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color(0xffF5F5F5),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Badge(
                    badgeContent: const Text(
                      "7",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    badgeColor: Colors.red,
                    child: const Icon(
                      Icons.notifications_sharp,
                      color: Color(0xff209fa5),
                      size: 20,
                    ),
                  ),
                ),
                const Spacer(),
                PopupMenuButton<int>(
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: Row(
                        children: const [
                          Icon(Icons.logout),
                          SizedBox(width: 5,),
                          Text("Logout")
                        ],
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 1 / 9 ),
            height: 150,
            width: MediaQuery.of(context).size.width * 3 / 4 + 50,
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      maxRadius: 40,
                      child: Image.asset("assets/images/user.png"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "John Doe",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff002642),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "jdoe@gmail.com",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff002642),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "0714980450",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff002642),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: const [
                            Text(
                              "Donations given: ",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff002642),
                              ),
                            ),
                            Text(
                              "13",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff209fa5),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.9, -0.75),
            child: Container(
                margin: const EdgeInsets.only(
                  left: 10,
                  bottom: 10,

                ),
                child: const Icon(
                  Icons.edit,
                  size: 20,
                )),
          ),
        ],
      )),
    );
  }
}
