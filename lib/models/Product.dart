
class CatalogModel{
  static final item= [
    Item(
        id: 1,
        name: "iPhone",
        desc: "Hi there",
        price: 10,
        color: "#33505a",
        image: "https://www.pavilionweb.com/wp-content/uploads/2017/03/man-300x300.png"
    ),
    Item(
        id: 1,
        name: "iPhone",
        desc: "Hi there",
        price: 10,
        color: "#33505a",
        image: "https://www.pavilionweb.com/wp-content/uploads/2017/03/man-300x300.png"
    )
  ];
}
class Item{
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}