class MenuModel{
  String title;
  String urlimage;
  String days;
  double price;
  bool isSelected;

  //Por defecto
  //MenuModel(this.title, this.urlimage, this.days, this.price);

  //Declarativo parametros opcionales y requeridos )
  MenuModel({
    required this.title, 
    required this.urlimage, 
    required this.days, 
    required this.price,
    required this.isSelected,
    });  
}

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

List<MenuModel> listMenu= [
  MenuModel(
    title: 'Menu 1',
    urlimage: "https://img.freepik.com/foto-gratis/plato-comida-frijoles-arroz_188544-8344.jpg?t=st=1730559755~exp=1730563355~hmac=a4ee9c0ce6ef5b9c7d24fd68a420cd937300f1fa743eb76d84c60562e46e1702&w=2000",
    days: 'Lun-Mar-Mier',
    price: 5.0,
    isSelected:false),
  MenuModel(
    title: 'Menu 2',
    urlimage:  "https://img.freepik.com/fotos-premium/feijoada-comida-tipica-brasilena_434193-225.jpg?w=1800",
    days: 'Lun-Mar-Mier',
    price: 9.0,
    isSelected:false),
  MenuModel(
    title: 'Menu 3',
    urlimage:  "https://img.freepik.com/fotos-premium/feijoada-brasilena-tradicional-plato_261158-35.jpg?w=1800",
    days: 'Lun-Mar-Mier',
    price: 15.0,
    isSelected:false),
  MenuModel(
    title: 'Menu 4',
    urlimage: 'https://img.freepik.com/foto-gratis/composicion-deliciosa-comida-brasilena-alto-angulo_23-2148739223.jpg?t=st=1730561794~exp=1730565394~hmac=b23d297ed2c55a2e46e43da64fab20078ae9cbb8721cacc555a1d3227d729834&w=1380',
    days: 'Lun-Mar-Mier',
    price: 12.0,
    isSelected:false),
  MenuModel(
    title: 'Menu 5',
    urlimage: 'https://img.freepik.com/fotos-premium/pollo-mantequilla_466689-54456.jpg?w=1800',
    days: 'Lun-Mar-Mier',
    price: 11.0,
    isSelected:false),
];