import 'package:flutter/material.dart';

class ContactInfoWidget extends StatelessWidget {
  const ContactInfoWidget({super.key, required this.child});

  final String child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        color: Colors.lightBlue[200],
        child: Center(
          child: Text(
            child, style: TextStyle(
              fontSize: 20
              ),
        )),
      ),
    );
  }
}