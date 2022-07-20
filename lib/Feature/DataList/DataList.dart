import 'package:travel_application/Feature/Model/CarClass.dart';
import 'package:travel_application/Feature/Model/ReviewClass.dart';

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
        hotelId: "hotel_1",
        ImagePath: "assets/images/papandayan_1.png",
        categoryName: "The Papandayan",
        hotelAddress: "Bandung, Indonesia",
        categoryIrd: 680.343,
        hotelOldIrd: 680.500,
        discountValue: 24,
        propertiesList: [
          "Wifi",
          "Hot water",
          "Lift",
          "Free Parking",
        ],
        categoryDescription:
            "This accommodation is clean, safe and CHSE certified by the Ministry of Tourism and Creative Economy.",
        noteOnHotel: "Cannot be refunded",
        checkIn: "Thursday, June 24, 2021",
        checkOut: "Friday, 25 June 2021",
        numberOfLike: 3,
        categoryRate: 3.6),
    Hotel(
        hotelId: "hotel_2",
        ImagePath: "assets/images/jambuluwukOceano.png",
        categoryName: "Jambuluwuk Oceano",
        hotelAddress: "Seminyak, Indonesia",
        categoryIrd: 446.343,
        hotelOldIrd: 446.700,
        discountValue: 50,
        propertiesList: [
          "Wifi",
          "Hot water",
          "Lift",
          "Free Parking",
        ],
        categoryDescription:
            "This accommodation is clean, safe and CHSE certified by the Ministry of Tourism and Creative Economy.",
        noteOnHotel: "Cannot be refunded",
        checkIn: "Thursday, June 24, 2021",
        checkOut: "Friday, 25 June 2021",
        numberOfLike: 6,
        categoryRate: 5),
    Hotel(
        hotelId: "hotel_3",
        ImagePath: "assets/images/papandayan_2.png",
        categoryName: "The Papandayan",
        hotelAddress: "Bandung, Indonesia",
        categoryIrd: 680.343,
        hotelOldIrd: 680.500,
        discountValue: 24,
        propertiesList: [
          "Wifi",
          "Hot water",
          "Lift",
          "Free Parking",
        ],
        categoryDescription:
            "This accommodation is clean, safe and CHSE certified by the Ministry of Tourism and Creative Economy.",
        noteOnHotel: "Cannot be refunded",
        checkIn: "Thursday, June 24, 2021",
        checkOut: "Friday, 25 June 2021",
        numberOfLike: 8,
        categoryRate: 3.6),
    Hotel(
        hotelId: "hotel_4",
        ImagePath: "assets/images/sunsetResidenceCodotel.png",
        categoryName: "Sunset Residence Codotel",
        hotelAddress: "Bandung, Indonesia",
        categoryIrd: 680.343,
        hotelOldIrd: 680.500,
        discountValue: 24,
        propertiesList: [
          "Wifi",
          "Hot water",
          "Lift",
          "Free Parking",
        ],
        categoryDescription:
            "This accommodation is clean, safe and CHSE certified by the Ministry of Tourism and Creative Economy.",
        noteOnHotel: "Cannot be refunded",
        checkIn: "Thursday, June 24, 2021",
        checkOut: "Friday, 25 June 2021",
        numberOfLike: 2,
        categoryRate: 3.6),
    Hotel(
        hotelId: "hotel_5",
        ImagePath: "assets/images/sabrina173Hotels.png",
        categoryName: "Sabrina 173Hotels",
        hotelAddress: "Pekanbaru, Indonesia",
        categoryIrd: 446.343,
        hotelOldIrd: 446.700,
        discountValue: 50,
        propertiesList: [
          "Wifi",
          "Hot water",
          "Lift",
          "Free Parking",
        ],
        categoryDescription:
            "This accommodation is clean, safe and CHSE certified by the Ministry of Tourism and Creative Economy.",
        noteOnHotel: "Cannot be refunded",
        checkIn: "Thursday, June 24, 2021",
        checkOut: "Friday, 25 June 2021",
        numberOfLike: 10,
        categoryRate: 3.6),
    Hotel(
        hotelId: "hotel_6",
        ImagePath: "assets/images/trenzHotels133.png",
        categoryName: "Trenz Hotels 133",
        hotelAddress: "Padang, Indonesia",
        categoryIrd: 680.343,
        hotelOldIrd: 680.500,
        discountValue: 24,
        propertiesList: [
          "Wifi",
          "Hot water",
          "Lift",
        ],
        categoryDescription:
            "This accommodation is clean, safe and CHSE certified by the Ministry of Tourism and Creative Economy.",
        noteOnHotel: "Cannot be refunded",
        checkIn: "Thursday, June 24, 2021",
        checkOut: "Friday, 25 June 2021",
        numberOfLike: 4,
        categoryRate: 3.6),
    Hotel(
        hotelId: "hotel_7",
        ImagePath: "assets/images/golomAplhaRoombyVivo.png",
        categoryName: "Golom Aplha Room by Vivo",
        hotelAddress: "Depok, Sleman",
        categoryIrd: 680.343,
        hotelOldIrd: 680.500,
        discountValue: 24,
        propertiesList: [
          "Wifi",
          "Cold water",
          "Lift",
        ],
        categoryDescription:
            "This accommodation is clean, safe and CHSE certified by the Ministry of Tourism and Creative Economy.",
        noteOnHotel: "Cannot be refunded",
        checkIn: "Thursday, June 24, 2021",
        checkOut: "Friday, 25 June 2021",
        numberOfLike: 7,
        categoryRate: 3.6),
  ];

  static List<Car> dataCars = [
    Car(
      carId: "c_1",
      ImagePath: "assets/images/i_1.png",
      categoryName: "Toyota Agya car year 2021",
      categoryIrd: 680.343,
      propertiesList: [
        "Full Fuel",
        "Cozy Interior",
        "Lift",
        "Living Tax",
      ],
      categoryDescription:
          "This accommodation is clean, safe and CHSE certified by the Ministry of Tourism and Creative Economy.",
      borrowing: "Thursday, June 24, 2021",
      delivery: "Friday, 25 June 2021",
      people: 4,
      categoryRate: 4,
    ),
    Car(
      carId: "c_2",
      ImagePath: "assets/images/i_2.png",
      categoryName: "Toyota Agya car year 2021",
      categoryIrd: 680.343,
      propertiesList: [
        "Full Fuel",
        "Cozy Interior",
        "Lift",
        "Living Tax",
      ],
      categoryDescription:
          "This accommodation is clean, safe and CHSE certified by the Ministry of Tourism and Creative Economy.",
      borrowing: "Thursday, June 24, 2021",
      delivery: "Friday, 25 June 2021",
      people: 4,
      categoryRate: 4,
    ),
    Car(
      carId: "c_3",
      ImagePath: "assets/images/i_3.png",
      categoryName: "Toyota Agya car year 2021",
      categoryIrd: 680.343,
      propertiesList: [
        "Full Fuel",
        "Cozy Interior",
        "Lift",
        "Living Tax",
      ],
      categoryDescription:
          "This accommodation is clean, safe and CHSE certified by the Ministry of Tourism and Creative Economy.",
      borrowing: "Thursday, June 24, 2021",
      delivery: "Friday, 25 June 2021",
      people: 4,
      categoryRate: 4,
    ),
  ];

  static List<Review> dataReviewHotel = [
    Review(
        customrName: "Muhammad Fadli",
        customrImage: "assets/images/profileImage.png",
        rate: 4,
        comment: "All the facilities are okay and the service is good, it's just that the car parking is very limited, but it's okay because it can be tried. worth to staycation",
        images: DataList.imagesHotel,
        date: "May 02, 2021"),

  ];
  static List<Review> dataReviewCars = [
    Review(
        customrName: "Muhammad Fadli",
        customrImage: "assets/images/profileImage.png",
        rate: 4,
        comment: "All the facilities are okay and the service is good, it's just that the car parking is very limited, but it's okay because it can be tried. worth to staycation",
        images: DataList.imagesCar,
        date: "May 02, 2021"),

  ];
  static List<CarRent> dataCarRent = [
    CarRent("assets/images/bali_Denpasar_1.png",
        "Car Rental & Drop Off in Bali", "Bali, Denpasar", 250.343),
    CarRent("assets/images/yogyakarta_Bantul.png",
        "Car Rental & Drop Off in Yogyakarta", "Yogyakarta, Bantul", 300.343),
    CarRent("assets/images/bali_Denpasar_2.png",
        "Car Rental & Drop Off in Bali", "Bali, Denpasar", 250.343),
  ];

  static List<String> imagesHotel = [
    "assets/images/product_1.png",
    "assets/images/product_2.png",
    "assets/images/product_3.png",
  ];
  static List<String> imagesCar = [
    "assets/images/i_1.png",
    "assets/images/i_2.png",
    "assets/images/i_3.png",
  ];
}
