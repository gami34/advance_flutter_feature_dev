class CatalogModel {
  static final List items = [
    Item(
        price: 200,
        imageUrl: "https://userphotos2.teacheron.com/725838-84573.jpg",
        color: "blue",
        name: "Team Lead",
        desc: "more moneh to your account",
        id: 1),
    Item(
        price: 200,
        imageUrl: "https://userphotos2.teacheron.com/725838-84573.jpg",
        color: "blue",
        name: "Team Lead",
        desc: "more moneh to your account",
        id: 1),
    Item(
        price: 200,
        imageUrl: "https://userphotos2.teacheron.com/725838-84573.jpg",
        color: "blue",
        name: "Team Lead",
        desc: "more moneh to your account",
        id: 1),
    Item(
        price: 200,
        imageUrl: "https://userphotos2.teacheron.com/725838-84573.jpg",
        color: "blue",
        name: "Team Lead",
        desc: "more moneh to your account",
        id: 1),
    Item(
        price: 200,
        imageUrl: "https://userphotos2.teacheron.com/725838-84573.jpg",
        color: "blue",
        name: "Team Lead",
        desc: "more moneh to your account",
        id: 1),
    Item(
        price: 200,
        imageUrl: "https://userphotos2.teacheron.com/725838-84573.jpg",
        color: "blue",
        name: "Team Lead",
        desc: "more moneh to your account",
        id: 1),
  ];
}

class Item {
  final int price;
  final String imageUrl;
  final String color;
  final String name;
  final String desc;
  final int id;

  Item(
      {required this.price,
      required this.imageUrl,
      required this.color,
      required this.name,
      required this.desc,
      required this.id});
}
