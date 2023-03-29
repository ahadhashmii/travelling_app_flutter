import 'package:flutter/material.dart';
import 'package:travelling_app_flutter/screens/home/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/welcome.jpg')
          ),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 100),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(.6),
                  Colors.black.withOpacity(.3)
                ]
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Discover\nmindful thinking', style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              )),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  width: 200,
                  child: const Text(
                    'Hiking and connecting with nature? Choose a way that is right for you!',
                    style: TextStyle(color: Colors.white70, height: 1.5),
                  )
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  backgroundColor: Colors.brown
                ),
                child: const Text('Try Now'),
              )
            ],
          ),
        ),
      )
    );
  }
}
