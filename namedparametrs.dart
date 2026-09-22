void main() {
  List<String> name  = [
    "kevin",
    "david",
    "saleel",
    "abi",
    "zenin",
    "nihal",
    "lasim",
  ];
//   name = ["dean", "mark", "omar"];
  name.sort((a, b) => b.compareTo(a));
  var newlist=name.where((element) => element.length==5,).toList();
  print(name);
  print(newlist);
}
