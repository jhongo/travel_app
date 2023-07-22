

class Places {

  final String place;
  final String location;
  final String url;
  final int review; 
  final double score;
  final double price; 
  final bool isFavorite;
  final String category;

  Places({
  required this.place, 
  required this.location, 
  required this.url,
  required this.review, 
  required this.score, 
  required this.price, 
  required this.isFavorite, 
  required this.category});
}

final places = <Places>[

  Places(
  place: 'Playa Blanca', 
  location: 'Saboga, Panama', 
  url: 'assets/places/playa_blanca.jpg',
  review: 38, 
  score: 4.5, 
  price: 47, 
  isFavorite: false, 
  category: 'beach'),

  Places(
  place: 'Mc Way Falls', 
  location: 'California, USA', 
  url: 'assets/places/mac_falls.jpg',
  review: 31, 
  score: 4.4, 
  price: 55, 
  isFavorite: false, 
  category: 'beach'),

  Places(
  place: 'Medhufushi Island Resort', 
  location: 'Maldives', 
  url: 'assets/places/maldives.jpg',
  review: 15, 
  score: 4.6, 
  price: 35, 
  isFavorite: false, 
  category: 'beach'),

  Places(
  place: 'Albufeira', 
  location: 'Portugal', 
  url: 'assets/places/albufeira.jpg',
  review: 24, 
  score: 4.8, 
  price: 70, 
  isFavorite: false, 
  category: 'beach'),

];