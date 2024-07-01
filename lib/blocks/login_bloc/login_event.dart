abstract class LoginEvents{}

class EmailOrPasswordEvent extends LoginEvents{
  final String emailValue;
  final String passwordValue;
  EmailOrPasswordEvent(this.emailValue, this.passwordValue);
}
class SubmittedEvent extends LoginEvents{
  final String email;
  final String password;
  SubmittedEvent(this.email, this.password);
}

