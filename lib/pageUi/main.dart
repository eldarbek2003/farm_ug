import 'package:farm_ugg_14/pageUi/Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key,});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int iIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.qr_code_rounded,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 70,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 3,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.home_rounded,
                    size: 30,
                    color: Colors.blue,
                  ),
                  onPressed: () {},
                ),
                Text(
                  'Home',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.blue,
                  ),
                  onPressed: () {},
                ),
                const Text(
                  'Profile',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ],
        ),
      ),
      body: MainScreen(),
    );
  }
}
