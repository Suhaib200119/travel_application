import 'package:travel_application/Feature/Model/CarClass.dart';

import '../Model/CarRentClass.dart';
import '../Model/CategoryHomeScreenClass.dart';
import '../Model/HotelClass.dart';

class DataList {
  static List<Category> dataCategory = [
    Category("1", "Hotels", "assets/images/hotels.png"),
    Category("2", "Aircrafts", "assets/images/aircraft.png"),
    Category("3", "Trains", "assets/images/train.png"),
    Category("4", "Cars", "assets/images/car.png"),
    Category("5", "Events", "assets/images/event.png"),
  ];
  static List<Hotel> dataHotels = [
    Hotel(
      hotelId:"h_1",
      imagePath: "assets/images/papandayan_1.png",
      name: "The Papandayan",
      hotelAddress: "Bandung, Indonesia",
      irdNew: 680.343,
      hotelIRDOld: 680.500,
      discountPercentage: 24,
      propertiesList: [
        "Wifi",
        "Hot water",
        "Lift",
        "Free Parking",
      ],
      desc:         "This accommodation is clean, safe and CHSE certified by the Ministry of Tourism and Creative Economy.",
      note: "Cannot be refunded",
      check_in: "Thursday, June 24, 2021",
      check_out: "Friday, 25 June 2021",
      like: 7,

    ),
    Hotel(
        hotelId:"h_2",
      imagePath: "assets/images/jambuluwukOceano.png",
      name: "Jambuluwuk Oceano",
      hotelAddress: "Seminyak, Indonesia",
      irdNew: 446.343,
      hotelIRDOld: 446.700,
      discountPercentage: 50,
      propertiesList: [
        "Wifi",
        "Hot water",
        "Lift",
        "Free Parking",
      ],
      desc:         "This accommodation is clean, safe and CHSE certified by the Ministry of Tourism and Creative Economy.",
      note: "Cannot be refunded",
      check_in: "Thursday, June 24, 2021",
      check_out: "Friday, 25 June 2021",
      like: 7,
    ),
    Hotel(
        hotelId:"h_3",
      imagePath: "assets/images/papandayan_2.png",
      name: "The Papandayan",
      hotelAddress: "Bandung, Indonesia",
      irdNew: 680.343,
      hotelIRDOld: 680.500,
      discountPercentage: 24,
      propertiesList: [
        "Wifi",
        "Hot water",
        "Lift",
        "Free Parking",
      ],
      desc:         "This accommodation is clean, safe and CHSE certified by the Ministry of Tourism and Creative Economy.",
      note: "Cannot be refunded",
      check_in: "Thursday, June 24, 2021",
      check_out: "Friday, 25 June 2021",
      like: 7,
    ),
    Hotel(
        hotelId:"h_4",
      imagePath: "assets/images/sunsetResidenceCodotel.png",
      name: "Sunset Residence Codotel",
      hotelAddress: "Bandung, Indonesia",
      irdNew: 680.343,
      hotelIRDOld: 680.500,
      discountPercentage: 24,
      propertiesList: [
        "Wifi",
        "Hot water",
        "Lift",
        "Free Parking",
      ],desc:         "This accommodation is clean, safe and CHSE certified by the Ministry of Tourism and Creative Economy.",
      note: "Cannot be refunded",
      check_in: "Thursday, June 24, 2021",
      check_out: "Friday, 25 June 2021",
      like: 7,

    ),
    Hotel(
        hotelId:"h_5",
      imagePath: "assets/images/sabrina173Hotels.png",
      name: "Sabrina 173Hotels",
      hotelAddress: "Pekanbaru, Indonesia",
      irdNew: 446.343,
      hotelIRDOld: 446.700,
      discountPercentage: 50,
      propertiesList: [
        "Wifi",
        "Hot water",
        "Lift",
        "Free Parking",
      ],
      desc:         "This accommodation is clean, safe and CHSE certified by the Ministry of Tourism and Creative Economy.",
      note: "Cannot be refunded",
      check_in: "Thursday, June 24, 2021",
      check_out: "Friday, 25 June 2021",
      like: 7,
    ),
    Hotel(
      hotelId: "h_6",
      imagePath: "assets/images/trenzHotels133.png",
      name: "Trenz Hotels 133",
      hotelAddress: "Padang, Indonesia",
      irdNew: 680.343,
      hotelIRDOld: 680.500,
      discountPercentage: 24,
      propertiesList: [
        "Wifi",
        "Hot water",
        "Lift",
      ],
      desc:"This accommodation is clean, safe and CHSE certified by the Ministry of Tourism and Creative Economy.",
      note: "Cannot be refunded",
      check_in: "Thursday, June 24, 2021",
      check_out: "Friday, 25 June 2021",
      like: 7,
    ),
    Hotel(
        hotelId:"h_7",
      imagePath: "assets/images/golomAplhaRoombyVivo.png",
      name: "Golom Aplha Room by Vivo",
      hotelAddress: "Depok, Sleman",
      irdNew: 680.343,
      hotelIRDOld: 680.500,
      discountPercentage: 24,
      propertiesList: [
        "Wifi",
        "Cold water",
        "Lift",
      ],
      desc:"This accommodation is clean, safe and CHSE certified by the Ministry of Tourism and Creative Economy.",
      note: "Cannot be refunded",
      check_in: "Thursday, June 24, 2021",
      check_out: "Friday, 25 June 2021",
      like: 7,
    ),
  ];

  static List<Car> dataCars = [
    Car(
      carId: "c_1",
      imagePath: "assets/images/i_1.png",
      name: "Toyota Agya car year 2021",
      irdNew: 680.343,
      propertiesList: [
        "Full Fuel",
        "Cozy Interior",
        "Lift",
        "Living Tax",

      ],
      desc:"This accommodation is clean, safe and CHSE certified by the Ministry of Tourism and Creative Economy.",
      borrowing: "Thursday, June 24, 2021",
      delivery:"Friday, 25 June 2021" ,
      people: 4,

    ),

    Car(
      carId: "c_2",
      imagePath: "assets/images/i_2.png",
      name: "Toyota Agya car year 2021",
      irdNew: 680.343,
      propertiesList: [
        "Full Fuel",
        "Cozy Interior",
        "Lift",
        "Free Parking",
        "Living Tax",

      ],
      desc: "This accommodation is clean, safe and CHSE certified by the Ministry of Tourism and Creative Economy.",
      borrowing: "Thursday, June 24, 2021",
      delivery:"Friday, 25 June 2021" ,
      people: 4,
    ),

    Car(
      carId: "c_3",
      imagePath: "assets/images/i_3.png",
      name: "Toyota Agya car year 2021",
      irdNew: 680.343,
      propertiesList: [
        "Full Fuel",
        "Cozy Interior",
        "Lift",
        "Free Parking",
        "Living Tax",

      ],
       desc:  "This accommodation is clean, safe and CHSE certified by the Ministry of Tourism and Creative Economy.",
      borrowing: "Thursday, June 24, 2021",
      delivery:"Friday, 25 June 2021" ,
      people: 4,
    ),

  ];
  static List<CarRent> dataCarRent = [
    CarRent("assets/images/bali_Denpasar_1.png", "Car Rental & Drop Off in Bali",
        "Bali, Denpasar", 250.343),
    CarRent("assets/images/yogyakarta_Bantul.png",
        "Car Rental & Drop Off in Yogyakarta", "Yogyakarta, Bantul", 300.343),
    CarRent("assets/images/bali_Denpasar_2.png", "Car Rental & Drop Off in Bali",
        "Bali, Denpasar", 250.343),
  ];

  static List<String> imagesPathHotelScreen=[
    "assets/images/product_1.png",
    "assets/images/product_2.png",
    "assets/images/product_3.png",

  ];
  static List<String> imagesPathCarScreen=[
    "assets/images/i_1.png",
    "assets/images/i_2.png",
    "assets/images/i_3.png",

  ];
}
