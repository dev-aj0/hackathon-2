import 'package:flutter/material.dart';
import 'ride_request_screen.dart'; // Import the ride request screen
import 'about_screen.dart'; // Import the AboutScreen
import 'profile_screen.dart'; // Import the ProfileScreen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Color customPrimaryColor =
      Color(0xFF000000); // Replace with your desired primary color

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Ride-Share App',
      theme: ThemeData(
        primarySwatch: MaterialColor(
          customPrimaryColor.value,
          <int, Color>{
            50: customPrimaryColor.withOpacity(0.1),
            100: customPrimaryColor.withOpacity(0.2),
            200: customPrimaryColor.withOpacity(0.3),
            300: customPrimaryColor.withOpacity(0.4),
            400: customPrimaryColor.withOpacity(0.5),
            500: customPrimaryColor.withOpacity(0.6),
            600: customPrimaryColor.withOpacity(0.7),
            700: customPrimaryColor.withOpacity(0.8),
            800: customPrimaryColor.withOpacity(0.9),
            900: customPrimaryColor.withOpacity(1.0),
          },
        ),
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: customPrimaryColor,
            onPrimary: Colors.white,
            elevation: 5,
          ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enviro-Route'),
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(
          // Image set to background of the body
          image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  child: Text(
                    'Welcome!',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the Ride Request Screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RideRequestScreen(),
                    ),
                  );
                },
                child: Text('Request a Ride'),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(1, 1, 0, 1),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Color.fromARGB(255, 179, 177, 177),
        onTap: (int index) {
          if (index == 1) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    AboutScreen(), // Navigate to the AboutScreen
              ),
            );
          } else if (index == 2) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    ProfileScreen(), // Navigate to the ProfileScreen
              ),
            );
          }
        },
      ),
    );
  }
}
