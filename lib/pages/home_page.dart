// pages/home_page.dart
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SetState Cards Assets App',
          style: TextStyle(
              color: Colors.white
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Selecciona tu mejor eleccion:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 16),
            Container(
              //color:Colors.red,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                border : Border.all(
                  color: Colors.black,
                  width: 2
                )
              ),
              child: Row(
                children: [
                  Image.network(
                    'https://picsum.photos/250?image=1',
                    width: MediaQuery.of(context).size.width/3,
                  ),
                  SizedBox(width: 16),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Menu 1"),
                        Text("Lun-Mar-Mier"),
                        Text("S/ 5."),
                      ],
                  )
                ]
              ),
            )
          ],
      ),
    ),
    );
  }
}