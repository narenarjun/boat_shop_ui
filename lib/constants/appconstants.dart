import 'package:flutter/material.dart';

import '../models/models.dart';

class MyColors {
  static const Color mainColor = Color(0xffafd6f0),
      accentColor = Color(0xffdaecf8);
}

List<FilterCategory> mainCategories = [
  FilterCategory(
    name: "Top Pick",
  ),
  FilterCategory(
    name: "Popular",
  ),
  FilterCategory(
    name: "New Release",
  ),
],
    subCategories = [
  FilterCategory(
    name: "Paddles",
  ),
  FilterCategory(
    name: "Boats",
  ),
  FilterCategory(
    name: "SurfBoards",
  ),
  FilterCategory(
    name: "Resin",
  ),
  FilterCategory(
    name: "Bras d'or",
  ),
];

List<Yatch> yatches = [
  Yatch(
    name: "V2 yarc",
    features: [
      'Storage: Under-bow Locker',
      'Windscreen: Smocked UV-protected acrylic',
      'Cooler: Sprung-lift hatch',
    ],
    topPic:
        "http://www.evoyachts.com/wp-content/themes/evo/media/r4wa/details.png",
    image:
        "http://www.evoyachts.com/wp-content/themes/evo/media/home/product-02.png",
    price: "\$ 458,000",
    yatchModelSpecification: [
      {
        'name': 'Length',
        'value': '43 ft',
        'icon': Icons.panorama_horizontal,
      },
      {
        'name': 'Beam',
        'value': '1.5 m',
        'icon': Icons.photo_size_select_large,
      },
      {
        'name': 'Speed',
        'value': '38 Kn',
        'icon': Icons.directions_boat,
      },
    ],
  ),
  Yatch(
    name: "f4z soov",
    features: [
      'Storage: Under-bow Locker',
      'Windscreen: Smocked UV-protected acrylic',
      'Cooler: Sprung-lift hatch',
    ],
    topPic:
        "http://www.evoyachts.com/wp-content/themes/evo/media/r6/details.png",
    image:
        "http://www.evoyachts.com/wp-content/themes/evo/media/home/product-03.png",
    price: "\$ 458,000",
    yatchModelSpecification: [
      {
        'name': 'Length',
        'value': '58 ft',
        'icon': Icons.panorama_horizontal,
      },
      {
        'name': 'Beam',
        'value': '1.5 m',
        'icon': Icons.photo_size_select_large,
      },
      {
        'name': 'Speed',
        'value': '42 Kn',
        'icon': Icons.directions_boat,
      },
    ],
  ),
  Yatch(
    name: "V2 yarc",
    features: [
      'Storage: Under-bow Locker',
      'Windscreen: Smocked UV-protected acrylic',
      'Cooler: Sprung-lift hatch',
    ],
    topPic:
        "http://www.evoyachts.com/wp-content/themes/evo/media/home/product-01.png",
    image:
        "http://www.evoyachts.com/wp-content/themes/evo/media/r4/details.png",
    price: "\$ 458,000",
    yatchModelSpecification: [
      {
        'name': 'Length',
        'value': '69 ft',
        'icon': Icons.panorama_horizontal,
      },
      {
        'name': 'Beam',
        'value': '2.1 m',
        'icon': Icons.photo_size_select_large,
      },
      {
        'name': 'Speed',
        'value': '29 Kn',
        'icon': Icons.directions_boat,
      },
    ],
  ),
  Yatch(
    name: "V2 yarc",
    features: [
      'Storage: Under-bow Locker',
      'Windscreen: Smocked UV-protected acrylic',
      'Cooler: Sprung-lift hatch',
    ],
    topPic:
        "http://www.evoyachts.com/wp-content/themes/evo/media/r4wa/details.png",
    image:
        "http://www.evoyachts.com/wp-content/themes/evo/media/home/product-02.png",
    price: "\$ 458,000",
    yatchModelSpecification: [
      {
        'name': 'Length',
        'value': '43 ft',
        'icon': Icons.panorama_horizontal,
      },
      {
        'name': 'Beam',
        'value': '1.5 m',
        'icon': Icons.photo_size_select_large,
      },
      {
        'name': 'Speed',
        'value': '38 Kn',
        'icon': Icons.directions_boat,
      },
    ],
  ),
  Yatch(
    name: "f4z soov",
    features: [
      'Storage: Under-bow Locker',
      'Windscreen: Smocked UV-protected acrylic',
      'Cooler: Sprung-lift hatch',
    ],
    topPic:
        "http://www.evoyachts.com/wp-content/themes/evo/media/r6/details.png",
    image:
        "http://www.evoyachts.com/wp-content/themes/evo/media/home/product-03.png",
    price: "\$ 458,000",
    yatchModelSpecification: [
      {
        'name': 'Length',
        'value': '58 ft',
        'icon': Icons.panorama_horizontal,
      },
      {
        'name': 'Beam',
        'value': '1.5 m',
        'icon': Icons.photo_size_select_large,
      },
      {
        'name': 'Speed',
        'value': '42 Kn',
        'icon': Icons.directions_boat,
      },
    ],
  ),
  Yatch(
    name: "V2 yarc",
    features: [
      'Storage: Under-bow Locker',
      'Windscreen: Smocked UV-protected acrylic',
      'Cooler: Sprung-lift hatch',
    ],
    topPic:
        "http://www.evoyachts.com/wp-content/themes/evo/media/home/product-01.png",
    image:
        "http://www.evoyachts.com/wp-content/themes/evo/media/r4/details.png",
    price: "\$ 458,000",
    yatchModelSpecification: [
      {
        'name': 'Length',
        'value': '69 ft',
        'icon': Icons.panorama_horizontal,
      },
      {
        'name': 'Beam',
        'value': '2.1 m',
        'icon': Icons.photo_size_select_large,
      },
      {
        'name': 'Speed',
        'value': '29 Kn',
        'icon': Icons.directions_boat,
      },
    ],
  ),
  Yatch(
    name: "V2 yarc",
    features: [
      'Storage: Under-bow Locker',
      'Windscreen: Smocked UV-protected acrylic',
      'Cooler: Sprung-lift hatch',
    ],
    topPic:
        "http://www.evoyachts.com/wp-content/themes/evo/media/r4wa/details.png",
    image:
        "http://www.evoyachts.com/wp-content/themes/evo/media/home/product-02.png",
    price: "\$ 458,000",
    yatchModelSpecification: [
      {
        'name': 'Length',
        'value': '43 ft',
        'icon': Icons.panorama_horizontal,
      },
      {
        'name': 'Beam',
        'value': '1.5 m',
        'icon': Icons.photo_size_select_large,
      },
      {
        'name': 'Speed',
        'value': '38 Kn',
        'icon': Icons.directions_boat,
      },
    ],
  ),
  Yatch(
    name: "f4z soov",
    features: [
      'Storage: Under-bow Locker',
      'Windscreen: Smocked UV-protected acrylic',
      'Cooler: Sprung-lift hatch',
    ],
    topPic:
        "http://www.evoyachts.com/wp-content/themes/evo/media/r6/details.png",
    image:
        "http://www.evoyachts.com/wp-content/themes/evo/media/home/product-03.png",
    price: "\$ 458,000",
    yatchModelSpecification: [
      {
        'name': 'Length',
        'value': '58 ft',
        'icon': Icons.panorama_horizontal,
      },
      {
        'name': 'Beam',
        'value': '1.5 m',
        'icon': Icons.photo_size_select_large,
      },
      {
        'name': 'Speed',
        'value': '42 Kn',
        'icon': Icons.directions_boat,
      },
    ],
  ),
  Yatch(
    name: "V2 yarc",
    features: [
      'Storage: Under-bow Locker',
      'Windscreen: Smocked UV-protected acrylic',
      'Cooler: Sprung-lift hatch',
    ],
    topPic:
        "http://www.evoyachts.com/wp-content/themes/evo/media/home/product-01.png",
    image:
        "http://www.evoyachts.com/wp-content/themes/evo/media/r4/details.png",
    price: "\$ 458,000",
    yatchModelSpecification: [
      {
        'name': 'Length',
        'value': '69 ft',
        'icon': Icons.panorama_horizontal,
      },
      {
        'name': 'Beam',
        'value': '2.1 m',
        'icon': Icons.photo_size_select_large,
      },
      {
        'name': 'Speed',
        'value': '29 Kn',
        'icon': Icons.directions_boat,
      },
    ],
  ),
];
