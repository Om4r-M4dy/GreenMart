import 'package:flutter/material.dart';

void replacement(BuildContext context, Widget destination) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => destination),
  );
}
