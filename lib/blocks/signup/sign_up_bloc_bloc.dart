

import 'package:block_management/blocks/signup/sign_up_bloc_event.dart';
import 'package:block_management/blocks/signup/sign_up_bloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBlocBloc extends Bloc<SignUpBlocEvents, SignUpBlocState>{
  String? _password;
  String? _confirmPassword;
  SignUpBlocBloc() : super(SignupInitState()){
    on<userNameEvent>((event, emit){
      if (event.userNameValue == "") {
        emit(SignupErrorState("Please enter your username"));
      }
    }
    );
    on<fatherNameEvent>((event, emit){
      if (event.fatherNameValue == "") {
        emit(SignupErrorState("Please enter your father's name"));
      }
    });
    on<emailEvent>((event, emit){
      if (event.emailValue == "") {
        emit(SignupErrorState("Please enter your email"));
      }
    });
    on<passwordEvent>((event, emit){
      _password = event.passwordValue;
      if (event.passwordValue == "") {
        emit(SignupErrorState("Please enter your password"));
      } else if(_confirmPassword != null && _confirmPassword != event.passwordValue){
        emit(SignupErrorState("Password does not match"));
      }
    });
    on<confirmPasswordEvent>((event, emit){
      _confirmPassword = event.confirmPasswordValue;
      if (event.confirmPasswordValue == "") {
        emit(SignupErrorState("Please confirm your password"));
      } else if(_password != null && _password != event.confirmPasswordValue){
        emit(SignupErrorState("Password does not match"));
      }
      else{
        emit(SignupValidState());
      }
    });
    on<SubmittedEvent>((event, emit){
      emit(SignupSubmittedState());
    });
  }
  

}
