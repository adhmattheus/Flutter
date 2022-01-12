class Planetas {
  final String id;
  final String name;
  final String location;
  final String distance;
  final String gravity;
  final String description;
  final String image;

  const Planetas({
    required this.id,
    required this.name,
    required this.location,
    required this.distance,
    required this.gravity,
    required this.description,
    required this.image,
  });
}

List<Planetas> planetas = [
  const Planetas(
    id: "1",
    name: "Mars",
    location: "Milkyway Galaxy",
    distance: "227.9m Km",
    gravity: "3.711 m/s ",
    description: "Lorem ipsum...",
    image: "assets/img/mars.png",
  ),
  const Planetas(
    id: "2",
    name: "Neptune",
    location: "Milkyway Galaxy",
    distance: "54.6m Km",
    gravity: "11.15 m/s ",
    description: "Lorem ipsum...",
    image: "assets/img/neptune.png",
  ),
  const Planetas(
    id: "3",
    name: "Moon",
    location: "Milkyway Galaxy",
    distance: "54.6m Km",
    gravity: "1.622 m/s ",
    description: "Lorem ipsum...",
    image: "assets/img/moon.png",
  ),
  const Planetas(
    id: "4",
    name: "Earth",
    location: "Milkyway Galaxy",
    distance: "54.6m Km",
    gravity: "9.807 m/s ",
    description: "Lorem ipsum...",
    image: "assets/img/earth.png",
  ),
  const Planetas(
    id: "5",
    name: "Mercury",
    location: "Milkyway Galaxy",
    distance: "54.6m Km",
    gravity: "3.7 m/s ",
    description: "Lorem ipsum...",
    image: "assets/img/mercury.png",
  ),
];
