import 'package:flutter/widgets.dart';

class Applet {
  final String text;
  final String image;
  final String uri;
  final IconData icon;

  Applet({
    @required this.text,
    @required this.image,
    @required this.uri,
    this.icon,
  });
}
