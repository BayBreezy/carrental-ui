class Brand {
  final String name;
  final String image;
  final int id;

  Brand({required this.name, required this.image, required this.id});

  factory Brand.fronJson(Map<String, dynamic> json) =>
      Brand(id: json['id'], name: json['name'], image: json['image']);
}

///Dummy list of brands
List<Brand> brands = [
  Brand(name: "Tesla", image: "assets/images/tesla.png", id: 1),
  Brand(name: "Audi", image: "assets/images/audi.png", id: 2),
  Brand(name: "BMW", image: "assets/images/bmw.png", id: 3),
  Brand(name: "Lamborghini", image: "assets/images/lamborghini.png", id: 4),
  Brand(name: "Mazda", image: "assets/images/mazda.png", id: 5),
  Brand(name: "Mercedes", image: "assets/images/mercedes-benz.png", id: 6),
  Brand(name: "Mitsubishi", image: "assets/images/mitsubishi.png", id: 7),
  Brand(name: "Toyota", image: "assets/images/toyota.png", id: 8),
];
