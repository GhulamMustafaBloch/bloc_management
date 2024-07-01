abstract class SignUpBlocEvents{}

class userNameEvent extends SignUpBlocEvents{
  final String userNameValue;
  userNameEvent(
    this.userNameValue, 
    );
}
class fatherNameEvent extends SignUpBlocEvents{
  final String fatherNameValue;
  fatherNameEvent(
    this.fatherNameValue, 
    );
}
class emailEvent extends SignUpBlocEvents{
  final String emailValue;
  emailEvent(
    this.emailValue,
  );
  
}
class passwordEvent extends SignUpBlocEvents{
  final String passwordValue;
  passwordEvent(
    this.passwordValue,
  );
}
class confirmPasswordEvent extends SignUpBlocEvents{
  final String confirmPasswordValue;
  confirmPasswordEvent(
    this.confirmPasswordValue,
  );
}
class SubmittedEvent extends SignUpBlocEvents{
  final String email;
  final String password;
  final String confirmPassword;
  final String username;
  final String fatherName;
  SubmittedEvent(
    this.email, 
    this.password, 
    this.confirmPassword, 
    this.username, 
    this.fatherName
    );
}