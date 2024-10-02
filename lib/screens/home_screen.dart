import 'package:flutter/material.dart';
import 'package:lets_count_us/screens/login_screen.dart';
import 'package:lets_count_us/services/firebase_service.dart';

class HomeScreen extends StatelessWidget {
  final FirebaseService _firebaseService = FirebaseService();

  _signOut(BuildContext context) async {
    await _firebaseService.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => _signOut(context),
          )
        ],
      ),
      body: Center(
        child: Text("Welcome to Let’s Count Us!"),
      ),
    );
  }
}
