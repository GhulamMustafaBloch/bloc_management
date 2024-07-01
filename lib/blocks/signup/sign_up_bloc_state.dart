abstract class SignUpBlocState {}

class SignupInitState extends SignUpBlocState {}

class SignupErrorState extends SignUpBlocState {
  final String errorMassege;
  SignupErrorState(
    this.errorMassege,
  );
}

class SignupSubmittedState extends SignUpBlocState {}

class SignupValidState extends SignUpBlocState {}
