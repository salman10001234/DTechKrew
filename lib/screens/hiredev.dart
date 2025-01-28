import 'package:flutter/material.dart';

class HireDevelopersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.person_add, size: 100, color: Colors.purple),
          SizedBox(height: 20),
          Text('Hire Developers Screen', style: TextStyle(fontSize: 24)),
        ],
      ),
    );
  }
}