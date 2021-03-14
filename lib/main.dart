import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    title: 'My App',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",

      //ThemeData(primarySwatch: Colors.white),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[700],
        body: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(height: 30.0),
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/logo.png'),
              ),
              SizedBox(height: 8.0),
              Text(
                "Yothin Boonla",
                style: TextStyle(
                  fontFamily: 'Solway',
                  fontSize: 40.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 3.0),
              Text(
                "Audio-Visual Officer",
                style: TextStyle(
                  fontFamily: 'Merriweather',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                "Ministry of Foreign Affairs, Kingdom of Thailand.",
                style: TextStyle(
                  fontFamily: 'Merriweather',
                  color: Colors.white,
                  fontSize: 17.0,
                ),
              ),
              InkWell(
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 120.0,
                      ),
                      ElevatedButton(
                        child: Text(
                          'Education',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EducationReoute()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 140.0,
                      ),
                      ElevatedButton(
                        child: Text(
                          'Work',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WorkRoute()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  launch("tel://0613928606");
                },
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.call, size: 30.0, color: Colors.white),
                      SizedBox(
                        width: 60.0,
                      ),
                      Text(
                        "081-3928606",
                        style: TextStyle(
                          fontSize: 23.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  launch('yothin.b@hotmail.com');
                },
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        size: 30.0,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "yothin.b@hotmail.com",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  launch('https://www.facebook.com/yothin.em/');
                },
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.person_sharp,
                        size: 30.0,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "Facebook : yothinem",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  launch('https://www.instagram.com/yothin_em/');
                },
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.photo_camera_rounded,
                        size: 30.0,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "Instagram : yothin_em",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 280),
                    Text(
                      " © Yothin Em",
                      style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EducationReoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Education"),
      ),
      backgroundColor: Colors.grey[700],
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "สถาบันเทคโนโลยีปทุมวัน",
              style: TextStyle(
                  fontFamily: 'Solway', fontSize: 30.0, color: Colors.white),
            ),
            Text(
              "วทบ. วิศวกรรมซอฟต์แวร์และระบบสารสนเทศ",
              style: TextStyle(
                  fontFamily: 'Solway', fontSize: 18.0, color: Colors.white),
            ),
            Text(
              "มิถุนายน 2561 - ปัจจุบัน",
              style: TextStyle(
                  fontFamily: 'Solway', fontSize: 20.0, color: Colors.white),
            ),
            Text(
              "",
              style: TextStyle(
                  fontFamily: 'Solway', fontSize: 30.0, color: Colors.white),
            ),
            Text(
              "",
              style: TextStyle(
                  fontFamily: 'Solway', fontSize: 30.0, color: Colors.white),
            ),
            Text(
              "วิทยาลัยเทคนิคสมุทรสงคราม",
              style: TextStyle(
                  fontFamily: 'Solway', fontSize: 27.0, color: Colors.white),
            ),
            Text(
              "ปวส. ระบบโทรคมนาคม",
              style: TextStyle(
                  fontFamily: 'Solway', fontSize: 20.0, color: Colors.white),
            ),
            Text(
              "พฤษภาคม 2550 - มีนาคม 2552",
              style: TextStyle(
                  fontFamily: 'Solway', fontSize: 20.0, color: Colors.white),
            ),
            Text(
              "",
              style: TextStyle(
                  fontFamily: 'Solway', fontSize: 30.0, color: Colors.white),
            ),
            Text(
              "ปวช. อิเล็กทรอนิกส์",
              style: TextStyle(
                  fontFamily: 'Solway', fontSize: 20.0, color: Colors.white),
            ),
            Text(
              "พฤษภาคม 2547 - มีนาคม 2550",
              style: TextStyle(
                  fontFamily: 'Solway', fontSize: 20.0, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class WorkRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Work"),
      ),
      backgroundColor: Colors.grey[700],
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "กระทรวงการต่างประเทศ",
              style: TextStyle(
                  fontFamily: 'Solway', fontSize: 30.0, color: Colors.white),
            ),
            Text(
              "กรมสารนิเทศ",
              style: TextStyle(
                  fontFamily: 'Solway', fontSize: 25.0, color: Colors.white),
            ),
            Text(
              "กรกฎาคม 2559 - ปัจจุบัน",
              style: TextStyle(
                  fontFamily: 'Solway', fontSize: 20.0, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
