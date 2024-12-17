class User{
  List<Map<String,dynamic>> list = [];

  void addUser({required name, required age}){
    Map<String, dynamic> map = {};

    map["name"] = name;
    map["age"] = age;
    list.add(map);
  }

  void showUser(){
    print(list);
  }

  void updateUser({required name, required age, required id}){
    Map<String, dynamic> map = {};

    map["name"] = name;
    map["age"] = age;
    map["id"] = id;
    list[int.parse(id)] = map;
  }

  void deleteUser(String id){
    list.removeAt(int.parse(id));
  }
}