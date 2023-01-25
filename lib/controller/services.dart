import 'package:budget/controller/repository.dart';
import 'package:budget/model/user_entity.dart';

class UserServices{
  late Repository _repository;

  UserServices(){
    _repository = Repository();
  }

insertUser(User user) async{
  return await _repository.insertData('users', user.toJson());

}
readUser() async{
    return await _repository.readData('users');
}
  }

