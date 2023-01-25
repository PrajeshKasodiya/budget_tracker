import 'package:budget/widgets/Loader/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';

class FlutterOverlayLoader {
  void showLoader(context) {
    Loader.show(context,
        themeData: Theme.of(context).copyWith(
            colorScheme:
                ColorScheme.fromSwatch().copyWith(secondary: Colors.black54)),
        progressIndicator: FlutterSpinkit.spinkit,
        overlayColor: Colors.black54);
  }

  void hideLoader(){
    Loader.hide();
}
}
