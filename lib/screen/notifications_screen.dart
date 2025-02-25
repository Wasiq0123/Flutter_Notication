import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications SCreen'),
      ),
      body: Column(
        children: [
          Center(
              child: Text(
                  'Welcome to the Push Notifications from the Server Side'))
        ],
      ),
    );
  }
}
