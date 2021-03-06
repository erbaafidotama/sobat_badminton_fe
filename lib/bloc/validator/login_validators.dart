import 'dart:async';

mixin LoginValidators {
  var emailValidator = StreamTransformer<String, String>.fromHandlers(
    handleData: (email,sink){
      if(email.contains("@")){
        sink.add(email);
      } else {
        sink.addError("Email is not valid");
      }
    }
  );

  var passwordValidator = StreamTransformer<String, String>.fromHandlers(
    handleData: (password,sink){
      if(password.length>4){
        sink.add(password);
      } else {
        sink.addError("Password Length should be greater than 4 chars");
      }
    }
  );
}