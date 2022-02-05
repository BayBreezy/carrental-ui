class Car {
  final String name;
  final double price;
  final List<String> images;
  final List<Specs> specs;
  final double rating;
  final int passengers;
  bool? manual = false;

  Car({
    this.manual,
    required this.name,
    required this.rating,
    required this.passengers,
    required this.price,
    required this.images,
    required this.specs,
  });
}

class Specs {
  final String title;
  final String text;

  Specs({required this.title, required this.text});
}

List<Car> dummyCars = [
  Car(
    name: "BMW Gold Sedan",
    rating: 3.5,
    passengers: 4,
    price: 7500,
    images: [
      "assets/images/cars/bmw3.jpeg",
      "assets/images/cars/bmw1.jpeg",
      "assets/images/cars/bmw2.jpeg"
    ],
    specs: [
      Specs(title: "Performance", text: "462 HP"),
      Specs(title: "Pulse Accelerator", text: "Adrenaline under the hood"),
      Specs(title: "Top Speed", text: "240 MPH"),
    ],
  ),
  Car(
    name: "Black Mazda Sedan",
    rating: 4.1,
    passengers: 4,
    price: 9500,
    images: [
      "assets/images/cars/mazda1.jpeg",
      "assets/images/cars/mazda2.jpeg",
      "assets/images/cars/mazda3.jpeg"
    ],
    specs: [
      Specs(title: "Performance", text: "462 HP"),
      Specs(title: "Pulse Accelerator", text: "Adrenaline under the hood"),
      Specs(title: "Top Speed", text: "240 MPH"),
    ],
  ),
  Car(
    name: "Audi - Red Sport",
    rating: 5.0,
    passengers: 2,
    manual: true,
    price: 9500,
    images: [
      "assets/images/cars/audi1.jpeg",
      "assets/images/cars/audi2.jpeg",
    ],
    specs: [
      Specs(title: "Performance", text: "462 HP"),
      Specs(title: "Pulse Accelerator", text: "Adrenaline under the hood"),
      Specs(title: "Top Speed", text: "240 MPH"),
    ],
  ),
  Car(
    name: "Orange Lamborghini",
    rating: 4.7,
    passengers: 2,
    manual: true,
    price: 15500,
    images: [
      "assets/images/cars/lambo1.jpeg",
      "assets/images/cars/lambo2.jpeg",
      "assets/images/cars/lambo3.jpeg",
    ],
    specs: [
      Specs(title: "Performance", text: "462 HP"),
      Specs(title: "Pulse Accelerator", text: "Adrenaline under the hood"),
      Specs(title: "Top Speed", text: "240 MPH"),
    ],
  ),
  Car(
    name: "Tesla",
    rating: 4,
    passengers: 4,
    price: 12500,
    images: [
      "assets/images/cars/tesla1.jpeg",
      "assets/images/cars/tesla2.jpeg",
      "assets/images/cars/tesla3.jpeg",
    ],
    specs: [
      Specs(title: "Performance", text: "462 HP"),
      Specs(title: "Pulse Accelerator", text: "Adrenaline under the hood"),
      Specs(title: "Top Speed", text: "240 MPH"),
    ],
  ),
];
