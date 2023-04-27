// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  
  // Define the icons for each item in a list
  final List<IconData> iconsname = [
    Icons.computer,
    Icons.phone_android_outlined,
    Icons.cable,
    Icons.mouse,
    Icons.smart_screen_rounded,
    Icons.tablet_mac,
    Icons.camera_alt,
  ];

  
// Define the names of the items in a list
  final itemsname = [
    'Desktop',
    'Smart Phone',
    'Cable',
    'Mouse',
    'Smart Screen',
    'Tablet',
    'Camera'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'List View Demo',
      home: Scaffold(
        appBar: AppBar(
        
          title: const Text("List Of Items"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_outlined),
            ),
          ],
        ),

        body: Container(
          height: 1000,
          child: ListView.builder(
            // Use the length of the items list as the number of items to display
            itemCount: itemsname.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.symmetric(horizontal: 3),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 201, 201, 201),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: ListTile(
                  leading: Icon(
                    iconsname[index],
                    size: 40,
                    color: Colors.black,
                  ),
                  title: Text(
                    itemsname[index],
                    style:
                        const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  subtitle: Text(items_price[index]),
                  trailing: const Icon(
                    Icons.edit,
                    color: Colors.black,
                  ),
                  contentPadding: const EdgeInsets.all(1),
                ),
              );
            },
          ),
        ), 
        drawer: Drawer(
          child: Column(
            children: [
               Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20 ),
                  decoration:BoxDecoration(
                    
                    color: Colors.blue
                  ) ,                  
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                           CircleAvatar(
                backgroundImage: AssetImage('assets/pic1.jpg')
                          ),
                Text('Newaz Nezif',style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),),
                Text('newaznezif@gmail.com',style: TextStyle( 
                  color: Colors.white,
                  fontWeight: FontWeight.w300,  
                ),),
                          ],
                  ) ),
              
              
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(Icons.dashboard_outlined),
                    title: Text('Dashboard'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(Icons.data_object),
                    title: Text('Items'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(Icons.settings_outlined),
                    title: Text('Setting'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(Icons.person_2_outlined), 
                    title: Text('Account'),
              ),
            ),


            ],
          ),
        ),
        
    ),
           
      );
   
  }
}

// Define the prices of each item in a list
  final items_price = [
    '\$200.0',
    '\$1000.0',
    '\$10.0',
    '\$200.0',
    '\$200.0',
    '\$1000.0',
    '\$1000.0'
  ];