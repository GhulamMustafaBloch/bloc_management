abstract class LoginStates{}

class LoginErrorState extends LoginStates{
  final String errorMassage;
  LoginErrorState(this.errorMassage);
}
class LoginValidState extends LoginStates{}
class LoginInitState extends LoginStates{}
class LoginLoadingState extends LoginStates{}