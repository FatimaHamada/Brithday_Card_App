import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 79, 81, 140),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: <Widget>[
                // Max Size Widget
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    width: 340,
                    height: 480,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'User Name',
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Color.fromARGB(255, 79, 81, 140),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Password',
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Color.fromARGB(255, 79, 81, 140),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                       
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 79, 81, 140),
                              borderRadius: BorderRadius.circular(10)),
                          child: MaterialButton(
                            onPressed: () {},
                            height: 60,
                            minWidth: 320,
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  top: -50,
                  right: 120,
                  child: CircleAvatar(
                    radius: 75,
                    backgroundColor: Color.fromARGB(255, 79, 81, 140),
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage('images/cat.jpg'),
                    ),
                  ),
                ),
              ],
            ),
     ],
        ),
      ),
    );
  }
}
