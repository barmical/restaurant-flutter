class Restaurant {
  String name;
  String description;
  String location;
  String rating;
  String imageClip;
  List<String> imageChef;
  List<String> imagePeople;

  Restaurant({
    required this.name,
    required this.description,
    required this.location,
    required this.rating,
    required this.imageClip,
    required this.imageChef,
    required this.imagePeople,
  });
}

var restaurantlList = [
  Restaurant(
    name: 'Jakarta',
    rating: '4.6 / 5.0',
    description: 'asd',
    location: 'Senayan, Jakarta',
    imageClip: 'images/jakarta.jpg',
    imageChef: [
      'images/burger.jpg',
      'images/cupcake_2.jpg',
      'images/pasta.jpg',
      'images/noodle.jpg',
      'images/coffee.jpg',
    ],
    imagePeople: [
      'images/fries.jpg',
      'images/burger_2.jpg',
      'images/pie.jpg',
      'images/pancake_2.jpg',
      'images/coffee.jpg',
    ]
  ),
  Restaurant(
    name: 'Bandung',
    rating: '4.5 / 5.0',
    description: 'asd',
    location: 'Braga, Bandung',
    imageClip: 'images/bandung.jpg',
    imageChef: [
      'images/burger_2.jpg',
      'images/chicken.jpg',
      'images/donut_2.jpg',
      'images/ice_cream.jpg',
      'images/salad.jpg',
    ],
    imagePeople: [
      'images/pizza.jpg',
      'images/salad_2.jpg',
      'images/subway.jpg',
      'images/sushi.jpg',
      'images/pancake_2.jpg',
    ]
  ),
  Restaurant(
    name: 'Bali',
    rating: '4.9 / 5.0',
    description: 'asd',
    location: 'Seminyak, Bali',
    imageClip: 'images/bali.jpg',
    imageChef: [
      'images/pie.jpg',
      'images/fries.jpg',
      'images/ice_cream.jpg',
      'images/coffee.jpg',
      'images/subway.jpg',
    ],
    imagePeople: [
      'images/waffle_2.jpg',
      'images/chicken_2.jpg',
      'images/sushi_2.jpg',
      'images/fries.jpg',
      'images/salad.jpg',
    ]
  ),
  Restaurant(
    name: 'Surabaya',
    rating: '4.3 / 5.0',
    description: 'asd',
    location: 'Genteng, Surabaya',
    imageClip: 'images/surabaya.jpg',
    imageChef: [
      'images/salad_2.jpg',
      'images/donut_2.jpg',
      'images/cake_3.jpg',
      'images/pie.jpg',
      'images/sushi_2.jpg',
    ],
    imagePeople: [
      'images/burger_2.jpg',
      'images/cake_3.jpg',
      'images/noodle.jpg',
      'images/salad_2.jpg',
      'images/fries.jpg',
    ]
  ),
  Restaurant(
    name: 'Jogja',
    rating: '4.6 / 5.0',
    description: 'asd',
    location: 'Malioboro, Jogjakarta',
    imageClip: 'images/jogja.jpg',
    imageChef: [
      'images/chicken_3.jpg',
      'images/cupcake_2.jpg',
      'images/pie.jpg',
      'images/coffee.jpg',
      'images/subway.jpg',
    ],
    imagePeople: [
      'images/waffle_2.jpg',
      'images/sushi.jpg',
      'images/pizza.jpg',
      'images/pie.jpg',
      'images/burger.jpg',
    ]
  ),
  Restaurant(
    name: 'Semarang',
    rating: 'Handphone, Laptop,',
    description: 'asd',
    location: 'Salatiga, Semarang',
    imageClip: 'images/semarang.jpg',
    imageChef: [
      'images/burger.jpg',
      'images/chicken.jpg',
      'images/donut.jpg',
      'images/fries.jpg',
      'images/pie.jpg',
    ],
    imagePeople: [
      'images/salad.jpg',
      'images/steak.jpg',
      'images/noodle.jpg',
      'images/cupcake.jpg',
      'images/cake.jpg',
    ]
  ),
  Restaurant(
    name: 'Bogor',
    rating: '4.2 / 5.0',
    description: 'asd',
    location: 'Leuwiliang, Bogor',
    imageClip: 'images/bogor.jpg',
    imageChef: [
      'images/cake_2.jpg',
      'images/donut.jpg',
      'images/ice_cream.jpg',
      'images/pasta.jpg',
      'images/fries.jpg',
    ],
    imagePeople:[
      'images/sushi.jpg',
      'images/salad_2.jpg',
      'images/pancake_2.jpg',
      'images/pasta_2.jpg',
      'images/donut_2.jpg',
    ]
  ),
  Restaurant(
    name: 'Medan',
    rating: '4.4 / 5.0',
    description: 'asd',
    location: 'Toba, Medan',
    imageClip: 'images/medan.jpg',
    imageChef: [
      'images/cake_2.jpg',
      'images/chicken_3.jpg',
      'images/burger.jpg',
      'images/fries.jpg',
      'images/waffle_2.jpg',
    ],
    imagePeople: [
      'images/donut_2.jpg',
      'images/noodle.jpg',
      'images/pie.jpg',
      'images/pizza.jpg',
      'images/pasta_2.jpg',
    ]
  ),
];