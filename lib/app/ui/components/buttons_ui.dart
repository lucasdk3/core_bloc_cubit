import 'package:flutter/material.dart';

import '../theme/presenter/theme.dart';

Widget buttonUi(onClick, String text) {
  return Center(
    child: MaterialButton(
        minWidth: 200,
        height: 60,
        padding: EdgeInsets.all(20.0),
        color: primary,
        textColor: secundary,
        highlightElevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Text(text, style: TextStyle(fontSize: 16)),
        onPressed: onClick),
  );
}
