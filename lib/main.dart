import 'package:flutter/material.dart';

//img - https://www.sammobile.com/wp-content/uploads/2019/03/keyguard_default_wallpaper.png
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(226, 93, 208, 0.8),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://www.sammobile.com/wp-content/uploads/2019/03/keyguard_default_wallpaper.png'),
                      fit: BoxFit.cover),
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 60),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'WELCOME',
                                style: TextStyle(
                                    fontSize: 40,
                                    color: Color.fromRGBO(167, 66, 187, 0.9)),
                              ),
                              Text(
                                'To the paradise',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white70),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 45,
                                color: Colors.white70,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'LOG IN ',
                            style: TextStyle(fontSize: 20),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 30,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'NEW ',
                            style: TextStyle(fontSize: 20),
                          ),
                          Icon(
                            Icons.add,
                            size: 30,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
