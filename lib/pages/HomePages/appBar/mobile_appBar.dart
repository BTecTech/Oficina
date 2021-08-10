import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      toolbarHeight: 100,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'img/logo-mercedes.png',
            fit: BoxFit.contain,
            height: 50,
            scale: 1,
            alignment: Alignment.center,
          ),
          Container(
            padding: const EdgeInsets.all(5.0),
            child: Text('Oficina mobile'),
            alignment: Alignment.center,
          )
        ],
      ),
      // actions: [
      //   IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.red,)),
      //  SizedBox(width: 20),
      //  IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.red,)),
      //],
    );
  }
}
