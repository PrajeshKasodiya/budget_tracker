import 'package:budget/controller/cubit/users_state.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class UserCubit extends Cubit<UsersState> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  UserCubit() : super(UsersInitial()) {
    Future.delayed(const Duration(seconds: 5), () async {
      User? currentUser = _auth.currentUser;
    });
  }
}
