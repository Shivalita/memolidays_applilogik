import 'package:flutter/material.dart';
import 'package:memolidays/core/components/exceptions/exception_model.dart';

class GoogleAuthException implements ExceptionModel {

  final BuildContext context;
  final String message = 'Authentication attempt failed, please try again.';

  GoogleAuthException(this.context);

  void displayError() {
    final ExceptionModel exceptionModel = ExceptionModel(context, message);
    exceptionModel.displayError();
  }

}