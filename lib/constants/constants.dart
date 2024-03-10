import 'package:flutter/material.dart';

const kheight5 = SizedBox(
  height: 5,
);

const kheight10 = SizedBox(
  height: 10,
);

const kheight20 = SizedBox(
  height: 20,
);
const kheight30 = SizedBox(
  height: 30,
);

const kwidth5 = SizedBox(
  width: 5,
);

const kwidth10 = SizedBox(
  width: 10,
);
const kwidth20 = SizedBox(
  width: 20,
);
const kwidth30 = SizedBox(
  width: 30,
);

class Shop {
  final int id;
  final String name;
  final String phoneNumber;
  final String ownerName;
  final String location;

  Shop(this.id, this.name, this.phoneNumber, this.ownerName, this.location);
}

List<Shop> shops = [
  Shop(1233, "Sweet Delights Bakery", "+1234567890", "John Doe", "123 Main St"),
  Shop(2234, "Sunny Side Hotel", "+1987654321", "Jane Smith", "456 Elm St"),
  Shop(3323, "Cupcake Corner", "+1122334455", "Mike Johnson", "789 Oak St"),
  Shop(4233, "Cozy Inn", "+1555555555", "Emily Brown", "321 Pine St"),
  Shop(5231, "Bread Basket Bakery", "+1777888999", "Chris Taylor",
      "654 Maple St"),
  Shop(6455, "Sunrise Lodge", "+1666666666", "Sarah Lee", "987 Cedar St"),
  Shop(7565, "Gourmet Treats Bakery", "+1444333222", "David Wilson",
      "741 Birch St"),
  Shop(
      8656, "Moonlight Motel", "+1999444333", "Lisa Anderson", "852 Walnut St"),
  Shop(
      9674, "Sugar Rush Bakery", "+1888999777", "Michael Smith", "369 Vine St"),
  Shop(1044, "Starlight Inn", "+1333222111", "Karen Thompson", "258 Cherry St"),
  // Add more shops here...
];

  // Print out the list of shops


