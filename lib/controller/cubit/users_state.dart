abstract class UsersState {}

class UsersInitial extends UsersState {}

class UsersError extends UsersState {
  final String errorMsg;
  UsersError(this.errorMsg);
}
class UsersLoading extends UsersState {}
class UsersLoaded extends UsersState {}
class AuthLoggedInState extends UsersState {}
class AuthLoggedOutState extends UsersState {}
