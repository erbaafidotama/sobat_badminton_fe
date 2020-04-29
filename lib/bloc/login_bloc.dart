import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'package:app_sobat/bloc/validator/login_validators.dart';

class LoginBloc extends Object with LoginValidators implements BaseLoginBloc {
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  Function(String) get emailChanged => _emailController.sink.add;
  Function(String) get passwordChanged => _passwordController.sink.add;

  Stream<String> get email => _emailController.stream.transform(emailValidator);
  Stream<String> get password =>
      _passwordController.stream.transform(passwordValidator);

  Stream<bool> get submitCheck =>
      Observable.combineLatest2(email, password, (e, p) => true);

  submit() {
    
  }

  @override
  void dispose() {
    _emailController?.close();
    _passwordController?.close();
  }
}

abstract class BaseLoginBloc {
  void dispose();
}
