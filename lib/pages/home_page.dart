// pages/home_page.dart
import 'package:flutter/material.dart';
// import '../models/menu_model.dart';
import 'package:statefullg10/models/menu_model.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Widget buildMenuCard (BuildContext context,
  Widget buildMenuCard (BuildContext context,
  MenuModel menu
  ) {  
    return  GestureDetector(
      onTap:(){
        setState(() {
          // Cambia el valor de isSelected para el elemento actual
          menu.isSelected = !menu.isSelected;
        });        
        print('Click en $MenuModel.title');
        print('Click en $MenuModel.isSelected');
      },
      child: Container(
                margin: EdgeInsets.only(bottom: 8),
                padding: EdgeInsets.all(8),
                //color:Colors.red,
                decoration: BoxDecoration(
                  //color:menu.isSelected ? Colors.orange : Colors.white,
                  color:menu.isSelected ? Color(0xfffDD770) : Colors.white,
                  // color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                  // borderRadius: BorderRadius.only(
                  //   topLeft: Radius.circular(20),
                  //   topRight: Radius.circular(20),
                  //   bottomLeft: Radius.circular(20),
                  //   bottomRight: Radius.circular(20),
                  // ),
                  border : Border.all(
                    //color: Colors.black,
                    //color: menu.isSelected ? Colors.orange : Colors.black,
                    color: menu.isSelected ? Color(0xfffDD770) : Colors.black,
                    width: 2
                  )
                ),
                child: Row(
                  children: [
                    Container(
                      // padding: EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width/3,
                      height: 110,
                      // child:Container(
                      //   color: Colors.red,
                      // ),
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                        // borderRadius: BorderRadius.only(
                        //   topLeft: Radius.circular(20),
                        //   bottomLeft: Radius.circular(20),
                        // ),
                        image : DecorationImage(
                          image: NetworkImage(menu.urlimage),
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
                          Text(menu.title,
                            style: TextStyle(
                              fontSize: 20,
                              color:menu.isSelected ? Colors.white : Colors.black,
                            ),
                          ),
                          Text(menu.days,
                            style: TextStyle(
                              fontSize: 16,
                              color:menu.isSelected ? Colors.white : Colors.black,
                            ),
                          ),
                          Text(menu.price.toString(),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color:menu.isSelected ? Colors.white : Colors.black,
                            ),
                          ),
                        ],
                    )
                  ]
                ),
              ),
    );
  }

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Selecciona tu mejor eleccion:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            // SizedBox(height: 16),
            Column(
              children: List.generate(
                listMenu.length,
                (index){
                  return buildMenuCard(
                    //context,...listMenu[index].values
                    context,
                    listMenu[index]
                    // listMenu[index].title,
                    // listMenu[index].days,
                    // listMenu[index].price.toString(),
                    // listMenu[index].urlimage
                  );
                }
              ),
            )
            // buildMenuCard(context,
            //   "Menu 1",
            //   "Lun-Mar-Mier",
            //   "S/ 5.",
            //   "https://img.freepik.com/foto-gratis/plato-comida-frijoles-arroz_188544-8344.jpg?t=st=1730559755~exp=1730563355~hmac=a4ee9c0ce6ef5b9c7d24fd68a420cd937300f1fa743eb76d84c60562e46e1702&w=2000",
            // ),
            // buildMenuCard(context,
            //   "Menu 2",
            //   "Lun-Mar-Mier",
            //   "S/ 7.",
            //   "https://img.freepik.com/fotos-premium/feijoada-comida-tipica-brasilena_434193-225.jpg?w=1800",
            // ),
            // buildMenuCard(context,
            //   "Menu 3",
            //   "Lun-Mar-Mier",
            //   "S/ 5.",
            //   "https://img.freepik.com/fotos-premium/feijoada-brasilena-tradicional-plato_261158-35.jpg?w=1800",
            // ),
            // buildMenuCard(context,
            //   "Menu 4",
            //   "Lun-Mar-Mier",
            //   "S/ 5.",
            //   "https://img.freepik.com/foto-gratis/composicion-deliciosa-comida-brasilena-alto-angulo_23-2148739223.jpg?t=st=1730561794~exp=1730565394~hmac=b23d297ed2c55a2e46e43da64fab20078ae9cbb8721cacc555a1d3227d729834&w=1380",
            // ),
            // buildMenuCard(context,
            //   "Menu 5",
            //   "Lun-Mar-Mier",
            //   "S/ 15.",
            //   "https://img.freepik.com/fotos-premium/pollo-mantequilla_466689-54456.jpg?w=1800",
            // ),
          ],
      ),
    ),
    );
  }
}