import 'package:flutter/material.dart';

class DrawerCusom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            color: Colors.grey,
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            alignment: Alignment.center,
            child: Wrap(
              spacing: 10,
              direction: Axis.vertical,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                    "images/avatar.jpg",
                  ),
                  radius: 60,
                ),
                Text(
                  "Васильев Егор",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22),
                ),
                Text(
                  "neostar1996@mail.ru",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          ListTile(
            title: const Text('Галлерея'),
            onTap: () {
              Navigator.of(context).pushNamed("/gallery");
            },
          ),
          ListTile(
            title: const Text('Обо мне'),
            onTap: () {
              Navigator.of(context).pushNamed("/about");
            },
          ),
        ],
      ),
    );
  }
}
