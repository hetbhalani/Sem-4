class User{
  List<Map<String,dynamic>> users = [];

  void addUser({required userName,required email, required password}){
    Map<String,dynamic> map = {};
    map[userName] = userName;
    map[email] = email;
    map[password] = password;
    users.add(map);
  }

  List<Map<String,dynamic>> readUser(){
    return users;
  }

  void updateUser({required userName,required email, required password, required id}){
    Map<String,dynamic> map = {};
    map[userName] = userName;
    map[email] = email;
    map[password] = password;
    users[id] = map;
  }

  void deleteUser(id){
    users.removeAt(id);
  }
}