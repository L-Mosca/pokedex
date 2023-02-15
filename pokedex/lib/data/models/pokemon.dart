class Pokemon {
  final String name;
  final String image;

  factory Pokemon.fromMap(Map<String, dynamic> json) {
    return Pokemon(name: json['name'], image: json['img']);
  }

  Pokemon({required this.name, required this.image});

}