import 'package:flutter/material.dart';

class ItemRedondo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
              height: 110.0,
              width: 110.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(110.0),
                border: Border.all(color: Colors.yellow, width: 2.0)
              ),
              child: ClipOval(
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTOI0LWWqobaNp8Mm8r01U6XzEWMWuJ2CG_T14J4EaP_OAoYBJO&usqp=CAU',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Image.network(
              'https://occ-0-1722-92.1.nflxso.net/dnm/api/v6/TsSRXvDuraoJ7apdkH6tsHhf-ZQ/AAAABc9PDXEsjm-N-tQmkdXu5YMrr99b-WU9ayojqcP0sO2lnW3Gq0xQUTL2UW32LGno72Da9rUDtrIlQ8KpuYXYcJLjugOjCCY4MaCI.png?r=cbf',
              width: 100.0,
            )
          ],
        ),
        SizedBox(width: 10.0,)
      ],
    );
  }
}