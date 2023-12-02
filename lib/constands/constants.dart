import 'package:flutter/material.dart';

const sbh20 = SizedBox(
  height: 20,
);

const sbh40 = SizedBox(
  height: 40,
);

const Color screenBackgroundColor = Color(0xFF481450);

MaterialStateProperty<RoundedRectangleBorder?> constantButtonStyles =
    MaterialStateProperty.all<RoundedRectangleBorder>(
  RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
);
