import 'package:flutter/material.dart';

class DetailWidget extends StatelessWidget {
  final String title;
  final String description;
  final String imageURL;

  const DetailWidget({
    Key key,
    @required this.title,
    @required this.description,
    @required this.imageURL,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: size.height * 0.23,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Hero(
                tag: imageURL,
                child: Image.network(
                  imageURL,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
