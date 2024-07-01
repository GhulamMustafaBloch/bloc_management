import 'package:bloc/bloc.dart';
import 'package:block_management/blocks/login_bloc/login_event.dart';
import 'package:block_management/blocks/login_bloc/login_state.dart';
import 'package:email_validator/email_validator.dart';

class LoginBloc extends Bloc<LoginEvents, LoginStates>{
  LoginBloc(): super(LoginInitState()){
    on<EmailOrPasswordEvent>((event, emit){
      if(EmailValidator.validate(event.emailValue) == false){
        emit(LoginErrorState("Please Enter a Valid Email"));
      }
      else if(event.passwordValue.length < 8){
        emit(LoginErrorState("Please Enter a Valid Password"));
      }
      else{
        emit(LoginValidState());
      }
    });
    on<SubmittedEvent>((event, emit){
      emit(LoginLoadingState());
    });
  }
}