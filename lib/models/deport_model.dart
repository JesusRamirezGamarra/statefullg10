// class deportModelList{
//   static List<DeportModel> deportModelListStatic = [
//     DeportModel("Gimnasio", false),
//     DeportModel("Crossfit", false),
//     DeportModel("Corredor", false),
//     DeportModel("Baloncesto", false),
//     DeportModel("Nadador", false),
//     DeportModel("Golf", false),
//     DeportModel("Tenis", false),
//     DeportModel("Voley", false),
//   ];
// }


class DeportModel{
  String name;
  bool isFavorite;
  DeportModel(this.name, this.isFavorite);
}

void addDeport(){
  DeportModel deportModel = DeportModel("Futbol", false);
  deportModelList.add(deportModel);
}


List<DeportModel> deportModelList = [
  DeportModel("Gimnasio", false),
  DeportModel("Crossfit", false),
  DeportModel("Corredor", false),
  DeportModel("Baloncesto", false),
  DeportModel("Nadador", false),
  DeportModel("Golf", false),
  DeportModel("Tenis", false),
  DeportModel("Voley", false),
];