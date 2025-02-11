class User {
  List<Map<String, dynamic>> users = [];

  void addUser({required userName, required email, required prio}) {
    Map<String, dynamic> map = {};
    map['userName'] = userName;
    map['email'] = email;
    map['prio'] = prio;
    users.add(map);
  }

  List<Map<String, dynamic>> readUser() {
    return users;
  }

  void updateUser(
      {required userName, required email, required prio, required id}) {
    Map<String, dynamic> map = {};
    map['userName'] = userName;
    map['email'] = email;
    map['prio'] = prio;
    users[id] = map;
  }

  void deleteUser(id) {
    users.removeAt(id);
  }

  void searchUser({required data}) {
    for (var elm in users) {
      if (elm['userName']
          .toString()
          .toLowerCase()
          .contains(data.toString().toLowerCase()) ||
          elm['email']
              .toString()
              .toLowerCase()
              .contains(data.toString().toLowerCase()) ||
          elm['prio']
              .toString()
              .toLowerCase()
              .contains(data.toString().toLowerCase())) {
        print("$elm['userName'] \n $elm['email'] \n $elm['prio']");
      }
    }
  }
}
