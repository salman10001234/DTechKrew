import 'package:flutter/material.dart';

class ExpertiseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.star, size: 100, color: Colors.orange),
          SizedBox(height: 20),
          Text('Expertise Screen', style: TextStyle(fontSize: 24)),
        ],
      ),
    );
  }
}