import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 100,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Image.asset(
                'img/logo-mercedes.png',
                fit: BoxFit.contain,
                height: 80,
                scale: 1,
                alignment: Alignment.center,
              ),
            ),
          ),
          const SizedBox(width: 24),
          Text("Oficina web"),
        ],
      ),
    );
  }
}
