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
                // color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                // borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(20),
                //   topRight: Radius.circular(20),
                //   bottomLeft: Radius.circular(20),
                //   bottomRight: Radius.circular(20),
                // ),
                border : Border.all(
                  color: Colors.black,
                  width: 2
                )
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    width: MediaQuery.of(context).size.width/3,
                    height: 120,
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                      // borderRadius: BorderRadius.only(
                      //   topLeft: Radius.circular(20),
                      //   bottomLeft: Radius.circular(20),
                      // ),
                      image : DecorationImage(
                        image: NetworkImage('https://img.freepik.com/foto-gratis/plato-comida-frijoles-arroz_188544-8344.jpg?t=st=1730559755~exp=1730563355~hmac=a4ee9c0ce6ef5b9c7d24fd68a420cd937300f1fa743eb76d84c60562e46e1702&w=2000'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Image.network(
                  //   'https://img.freepik.com/foto-gratis/plato-comida-frijoles-arroz_188544-8344.jpg?t=st=1730559755~exp=1730563355~hmac=a4ee9c0ce6ef5b9c7d24fd68a420cd937300f1fa743eb76d84c60562e46e1702&w=2000',
                  //   width: MediaQuery.of(context).size.width/3,
                  // ),
                  SizedBox(width: 16),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Menu 1",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text("Lun-Mar-Mier",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text("S/ 5.",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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