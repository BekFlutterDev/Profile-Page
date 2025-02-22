import 'package:flutter/material.dart';
import 'package:profile/core/components/exporting_packages.dart';
import 'package:profile/widgets/my_border_radius.dart';

class NinePatch {
  static Container right(String message) => Container(
        margin: MyEdgeInsets.symmetric(h: 16.0, v: 12.0),
        constraints: MyBoxConstraints.box(),
        padding: MyEdgeInsets.all(12.0),
        decoration: MyDecoration.only(
          color: ConstColor.secondary,
          borderRadius: MyBorderRadius.only(
            topRight: 16.0,
            topLeft: 16.0,
            bottomLeft: 16.0,
          ),
        ),
        child: MyText(message, color: Colors.white),
      );

  static Container left(String message) => Container(
        margin: MyEdgeInsets.symmetric(h: 16.0, v: 12.0),
        constraints: MyBoxConstraints.box(),
        padding: MyEdgeInsets.all(12.0),
        decoration: MyDecoration.only(
            color: Colors.white,
            borderRadius: MyBorderRadius.only(
                topRight: 16.0, topLeft: 16.0, bottomRight: 16.0)),
        child: MyText(message),
      );
}
