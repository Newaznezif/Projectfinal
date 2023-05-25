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
                  CircleAvatar(backgroundImage: AssetImage('assets/pic1.jpg')),
                  Text(
                    'Newaz Nezif',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    'newaznezif@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              )),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(Icons.dashboard_outlined),
              title: Text('Dashboard'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(Icons.data_object),
              title: Text('Items'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(Icons.settings_outlined),
              title: Text('Setting'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(Icons.person_2_outlined),
              title: Text('Account'),
            ),
          ),
        ],
      ),
    );
  }
}
