class Car {
  String carId;
  String ImagePath;
  String categoryName;
  double categoryIrd;
  List<String> propertiesList;
  String categoryDescription;
  String borrowing;
  String delivery;
  int people;
  double categoryRate;

  Car(
      {required this.carId,
      required this.ImagePath,
      required this.categoryName,
      required this.categoryIrd,
      required this.propertiesList,
      required this.categoryDescription,
      required this.borrowing,
      required this.delivery,
      required this.people,
      required this.categoryRate});
}
