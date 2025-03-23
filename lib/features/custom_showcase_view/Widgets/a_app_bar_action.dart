import 'package:flutter/material.dart';


class AppBarAction extends StatelessWidget {
  const AppBarAction({super.key, required this.icondata, required this.appBarFun});

  final IconData icondata;
  final Function appBarFun;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CircleAvatar(
        backgroundColor: Colors.red.withOpacity(0.5),
        child: IconButton(
          icon: Icon(icondata),
          color: Colors.white,
          onPressed: () => appBarFun(),
        ),
      ),
    );
  }
}
