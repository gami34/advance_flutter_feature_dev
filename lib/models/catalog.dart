class CatalogModel {
  static List items = [
    Item(
        id: 125,
        category_id: 12,
        reference: "tr-a1823-F",
        width: 30.11,
        height: 29.03,
        price: 47.49,
        thumbnail: "http://lorempixel.com/301/290/transport/6",
        image: "http://lorempixel.com/1506/1452/transport/6",
        description:
            "Hugtiw ke cepagu udububac su we ot ibo obuit bawhuopu ulo lel gehe gaheb adbamrib kazakid. Bojbir camucmor jazosilo wime icacere kazabguc toheh ro kajune voojeti juhew vehsidko mugewo pemoroz. Giogahi agufubut penki someguk povro uhenudkos cucugmov mu ecugapmut geuwaiki letuaz ud mezusar vepuzut.",
        stock: 104),
  ];
}

class Item {
  final int id;
  final int category_id;
  final String reference;
  final dynamic width;
  final dynamic height;
  final dynamic price;
  final String thumbnail;
  final String image;
  final String description;
  final int stock;

  Item(
      {required this.id,
      required this.category_id,
      required this.reference,
      required this.width,
      required this.height,
      required this.price,
      required this.thumbnail,
      required this.image,
      required this.description,
      required this.stock});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        category_id: map["category_id"],
        reference: map["reference"],
        width: map["width"],
        height: map["height"],
        price: "${map["price"]}",
        thumbnail: map["thumbnail"],
        image: map["image"],
        description: map["description"],
        stock: map["stock"]);
  }

  toMap() => {
        id: id,
        category_id: category_id,
        reference: reference,
        width: width,
        height: height,
        price: price,
        thumbnail: thumbnail,
        image: image,
        description: description,
        stock: stock
      };
}
