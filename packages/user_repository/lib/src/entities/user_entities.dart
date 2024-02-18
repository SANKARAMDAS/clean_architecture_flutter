class MyUserEntity {
  String id;
  String email;

  MyUserEntity({required this.email, required this.id});

  Map<dynamic, String> toDocument() {
    return {
      'id': id,
      'email': email,
    };
  }

  static MyUserEntity fromDocument(Map<String, dynamic> doc) {
    return MyUserEntity(email: doc['email'], id: doc['id']);
  }
}


//Want to put data from Firebase
/*
MyUser -> MyUSerEntity -> Map<String, dynamic> -> Firebase
*/
//Take data from Firebase
/*
Firebase -> Map<String, dynamic> -> MyUSerEntity -> MyUser
*/
