import 'package:budget/controller/Provider/Provider_screen/sign_in.dart';
import 'package:budget/view/master/master_screen.dart';
import 'package:budget/widgets/Loader/flutter_overlay_loader.dart';
import 'package:budget/widgets/alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthenticationProvider extends ChangeNotifier {
  late String _uid, _email;
  String get getUID => _uid;
  String get getEmail => _email;

  final userEmailController = TextEditingController();
  final userPasswordController = TextEditingController();
  final userConfirmPasswordController = TextEditingController();

  // signin in firebase
  Future<void> firebaseSignIn(String email, String password, context) async {
    FlutterOverlayLoader().showLoader(context);
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      _uid = userCredential.user!.uid;
      _email = userCredential.user!.email!;

      FlutterOverlayLoader().hideLoader();
      refreshController();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const MasterPage()));
    } on FirebaseAuthException catch (e) {
      FlutterOverlayLoader().hideLoader();
      alerts.ErrorDialog(
          context: context, title: "${e.email}", msg: "${e.message}");
    }
  }

  // create firebase account
  Future<void> firebaseSignUp(
      String email, String password, String cPassword, context) async {
    FlutterOverlayLoader().showLoader(context);
    try {
      // ignore: unused_local_variable
      final response = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      FlutterOverlayLoader().hideLoader();
      refreshController();
      await Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SignIn()));
    } on FirebaseAuthException catch (e) {
      FlutterOverlayLoader().hideLoader();
      alerts.ErrorDialog(
          context: context, title: "${e.email}", msg: "${e.message}");
    }
  }

  // singOut method
  Future<void> logout(context) async {
    await FirebaseAuth.instance.signOut().then((value) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignIn()),
      );
    }).catchError((e) {
      alerts.ErrorDialog(context: context, title: "Error", msg: e.toString());
    });
  }

  // forget password
  Future<void> forgetPassword(String emails, context) async {
    FlutterOverlayLoader().showLoader(context);
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emails)
          .then((value) {
        alerts.forgetPasswordDialog(
            context: context,
            title: emails,
            msg: "We have e-mailed your password reset link !");
        FlutterOverlayLoader().hideLoader();
        refreshController();
      });
    } on FirebaseAuthException catch (e) {
      alerts.ErrorDialog(
          context: context, title: e.code, msg: e.message.toString());
    }
  }

  void refreshController() {
    userEmailController.clear();
    userPasswordController.clear();
    notifyListeners();
  }
}
