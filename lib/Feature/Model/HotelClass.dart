class Hotel {
  String hotelId;
  String imagePath;
  String name;
  String hotelAddress;
  double irdNew;
  double hotelIRDOld;
  int discountPercentage;
  List<String> propertiesList;
  String desc;
  String note;
  String check_in;
  String check_out;
  int like;

  Hotel({
    required this.hotelId,
    required this.imagePath,
    required this.name,
    required this.hotelAddress,
    required this.irdNew,
    required this.hotelIRDOld,
    required this.discountPercentage,
    required this.propertiesList,
    required this.desc,
    required this.note,
    required this.check_in,
    required this.check_out,
    required this.like,
  });
}
