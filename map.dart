

void main() {
  final map = <String, dynamic>{
    "name": "arjun",
    "age": 22,
    "email": "arjun@gmail.com",
    "course": "flutter",
    "mark": 85,
  };
  print(map["name"]);
  print(map["age"]);
  print(map["email"]);
  print(map["course"]);
  print(map["mark"]);
  map.addEntries([MapEntry("city", "kozhikode")]);
  map.update("age", 
  (value){ 
   print(value);
    
    return 23;});
  map.update("mark", ((value) => 90));
  map.remove("email");

  print(map);
}
