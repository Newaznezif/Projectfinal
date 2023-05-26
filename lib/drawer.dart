import 'package:flutter/material.dart';

// ignore: camel_case_types
class drawer extends StatelessWidget {
  const drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(color: Colors.blue),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      radius: 50, // set radius to 80 pixels
                      backgroundImage: AssetImage('assets/pic1.jpg')),
                  Text(
                    'Newaz Nezif',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'newaznezif@gmail.com',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              )),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(Icons.data_object, color: Colors.black),
              title: Text(
                'Items',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(
                Icons.settings_outlined,
                color: Colors.black,
              ),
              title: Text(
                'Setting',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(Icons.person_2_outlined, color: Colors.black),
              title: Text(
                'Account',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
