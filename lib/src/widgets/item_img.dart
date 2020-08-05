import 'package:flutter/material.dart';

class ItemImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.network(
          'https://rtvc-assets-radionica3.s3.amazonaws.com/s3fs-public/styles/image_750x424/public/field/image/article/rick-morty-coronavirus.jpg?itok=0oTJnZg9',
          width: 150.0,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 10.0,)
      ],
    );
  }
}