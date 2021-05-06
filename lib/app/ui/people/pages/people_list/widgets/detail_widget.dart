import 'package:flutter/material.dart';

class DetailWidget extends StatelessWidget {
  final String title;
  final String description;
  final String imageURL;

  const DetailWidget({
    Key key,
    this.title,
    this.description,
    this.imageURL,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}
