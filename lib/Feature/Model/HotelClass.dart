class Hotel {
  String hotelId;
  String ImagePath;
  String categoryName;
  String hotelAddress;
  double categoryIrd;
  double hotelOldIrd;
  int discountValue;
  List<String> propertiesList;
  String categoryDescription;
  String noteOnHotel;
  String checkIn;
  String checkOut;
  int numberOfLike;
  double categoryRate;

  Hotel({
    required this.hotelId,
    required this.ImagePath,
    required this.categoryName,
    required this.hotelAddress,
    required this.categoryIrd,
    required this.hotelOldIrd,
    required this.discountValue,
    required this.propertiesList,
    required this.categoryDescription,
    required this.noteOnHotel,
    required this.checkIn,
    required this.checkOut,
    required this.numberOfLike,
    required this.categoryRate
  });
}
