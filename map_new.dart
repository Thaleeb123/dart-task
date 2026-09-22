void main() {
  List<Map<String, dynamic>> products = [
    {"name": "Laptop", "price": 50000, "category": "Electronics"},
    {"name": "Shoes", "price": 2000, "category": "Fashion"},
    {"name": "Phone", "price": 25000, "category": "Electronics"},
  ];
  // List<String> names = products.map((product) => product['name'] as String).toList();

  //   print(names);
  //  List<dynamic> price = products.map((product)=>product['price']as dynamic).toList();

  //  print(price);
  List<dynamic> productnames = [];

  for (var element in products) {
    productnames.add(element['name']);
  }

  print(productnames);

  List<dynamic> productprice = [];

  for (var element in products) {
    productprice.add(element['price']);
  }
  print(productprice);
  for (var product in products) {
    if (product['price'] > 10000) {
      print(product);
    }
  }
  for (var product in products) {
    if (product == "electronics") {
      print("products");
    }
  }

  for (var product in products) {
    if (product["name"] == "Laptop") {
      print(product["price"]);
      // (productprice) == 45000;
      if (product["price"] == 50000) {
        product["price"] = 45000;
        print(product["price"]);
      }
    }
  }
  products.add({
    "name": "Watch",
    "price": 3000,
    "category": "Fashion",
  });
}
