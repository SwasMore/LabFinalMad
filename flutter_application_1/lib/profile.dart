import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 150.0,
              height: 150.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blueAccent,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/katha.jpg'),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Swastika Das",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                IconButton(
                  icon: Icon(
                    Icons.edit,
                    color: Colors.blueGrey,
                  ),
                  onPressed: () {
                    // Action to perform when the icon button is pressed
                  },
                ),
              ],
            ),
            Text("21 years old"),
            Text("Student"),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Interests",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      textScaleFactor: 1.5),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 10),
                Container(
                  color: Color.fromARGB(255, 94, 119, 172),
                  padding: EdgeInsets.all(
                      8), // Add padding to give space around the text
                  child: Text(
                    "Singing",
                    style: TextStyle(
                        color: Colors.white), // Set text color to white
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  color: Color.fromARGB(255, 94, 119, 172),
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Dancing",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  color: Color.fromARGB(255, 94, 119, 172),
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Machine Learning",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  color: Color.fromARGB(255, 94, 119, 172),
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Painting",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 8),
              ],
            ),
            SizedBox(height: 2),
            Row(
              children: [
                SizedBox(width: 10),
                Container(
                  color: Color.fromARGB(255, 94, 119, 172),
                  padding: EdgeInsets.all(
                      8), // Add padding to give space around the text
                  child: Text(
                    "Animals",
                    style: TextStyle(
                        color: Colors.white), // Set text color to white
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  color: Color.fromARGB(255, 94, 119, 172),
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Books",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  color: Color.fromARGB(255, 94, 119, 172),
                  padding: EdgeInsets.all(8),
                  child: Text(
                    " Technology ",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  color: Color.fromARGB(255, 94, 119, 172),
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "  Guitar playing ",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 8),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "General",
                    textScaleFactor: 1.5,
                    style: TextStyle(color: Color.fromARGB(255, 8, 50, 109)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                      "Fullname                                                     Swastika Das Katha"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                      "Blood Group                                                              B+"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                      "Email                                    swastikadas.bu.cse7@gmail.com"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                      "Phone                                                          01985169907"),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              iconSize: 36.0,
              color: Colors.black,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
