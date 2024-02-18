import '../entities/entities.dart';

class MyUser {
  String id;
  String email;

  MyUser(this.email, this.id);

  MyUserEntity toEntity() {
    return MyUserEntity(
      id: id,
      email: email,
    );
  }

  static MyUser fromEntity(MyUserEntity entity) {
    return MyUser(entity.email, entity.id);
  }
}
