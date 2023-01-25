// Alert Object
import 'package:budget/controller/Provider/Provider_screen/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';

Alerts alerts = new Alerts();

class Alerts {
  void ErrorDialog(
      {required BuildContext context,
      required String title,
      required String msg}) {
    Dialogs.materialDialog(
        color: Colors.white,
        msg: msg,
        title: title,
        titleAlign: TextAlign.center,
        lottieBuilder: Lottie.network(
          'https://assets10.lottiefiles.com/packages/lf20_ddxv3rxw.json',
          fit: BoxFit.contain,
        ),
        context: context,
        actions: [
          IconsButton(
            padding: const EdgeInsets.all(18.0),
            onPressed: () => Navigator.of(context).pop(),
            text: 'ok',
            color: Colors.blue,
            textStyle: const TextStyle(color: Colors.white),
          ),
        ]);
  }

  void SuccessDialog(
      {required BuildContext context,
      required String title,
      required String msg}) {
    Dialogs.materialDialog(
        color: Colors.white,
        msg: msg,
        title: title,
        titleAlign: TextAlign.center,
        lottieBuilder: Lottie.network(
          'https://assets4.lottiefiles.com/packages/lf20_rc5d0f61.json',
          fit: BoxFit.contain,
        ),
        context: context,
        actions: [
          IconsButton(
            padding: const EdgeInsets.all(18.0),
            onPressed: () => Navigator.of(context).pop(true),
            text: 'ok',
            color: Colors.blue,
            textStyle: const TextStyle(color: Colors.white),
          ),
        ]);
  }

  void forgetPasswordDialog(
      {required BuildContext context,
      required String title,
      required String msg}) {
    Dialogs.materialDialog(
        color: Colors.white,
        msg: msg,
        title: title,
        titleAlign: TextAlign.center,
        lottieBuilder: Lottie.network(
          'https://assets4.lottiefiles.com/packages/lf20_rc5d0f61.json',
          fit: BoxFit.contain,
        ),
        context: context,
        actions: [
          IconsButton(
            padding: const EdgeInsets.all(18.0),
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignIn())),
            text: 'ok',
            color: Colors.blue,
            textStyle: const TextStyle(color: Colors.white),
          ),
        ]);
  }
}
