import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final Color firstColor = Color(0xFF52a99e);
  final Color secondColor = Color(0xFF56aab8);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background_pic.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: Icon(
                      Icons.person_pin,
                      size: 100,
                      color: Color.fromARGB(255, 51, 48, 48),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 65,
                    width: 300,
                    child: Center(
                      child: Text(
                        "Login Or Register",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.values[8],
                          color: firstColor,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 90,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[350],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: ListTile(
                        leading: Image.asset(
                          "assets/logo/harees_logo.png",
                        ),
                        title: Column(
                          children: [
                            Text(
                              "We accept Bupa, Tawuniya, MEDGULD, Malath and",
                            ),
                            Text("Alrajhi Takaful insurance for telemedicine"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 85,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(children: [
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "Settings",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.language,
                          size: 40,
                        ),
                        title: Text(
                          "Language",
                          style: TextStyle(color: Colors.blue),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.blue,
                        ),
                      )
                    ]),
                  ),
                  // SizedBox(
                  //   height: 15,
                  // ),
                  Container(
                    height: 20,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 199, 234, 252)),
                  ),
                  Container(
                    height: 85,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(children: [
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "Settings",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.language,
                          size: 40,
                        ),
                        title: Text(
                          "Language",
                          style: TextStyle(color: Colors.blue),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.blue,
                        ),
                      )
                    ]),
                  ),

                  Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(children: [
                      Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.language,
                              size: 40,
                            ),
                            title: Text(
                              "Language",
                              style: TextStyle(color: Colors.blue),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.language,
                              size: 40,
                            ),
                            title: Text(
                              "Language",
                              style: TextStyle(color: Colors.blue),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.blue,
                            ),
                          )
                        ],
                      )
                    ]),
                  ),
                  Container(
                    height: 20,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 199, 234, 252)),
                  ),
                  Container(
                    height: 85,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(children: [
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "Settings",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.language,
                          size: 40,
                        ),
                        title: Text(
                          "Language",
                          style: TextStyle(color: Colors.blue),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.blue,
                        ),
                      )
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
