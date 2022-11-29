import 'package:flutter/material.dart';
import 'app_color_config.dart';



BoxDecoration mainCardDecoration= BoxDecoration(
  color: ColorConfig().cardWhiteColor(1),
  borderRadius: BorderRadius.circular(20),
  boxShadow: [
    BoxShadow(
      color: ColorConfig().cardGrey3Color(0.1),
      spreadRadius: 1,
      blurRadius: 2,
      offset: const Offset(0, 1), // changes position of shadow
    ),
  ],
);








final OutlineInputBorder filterOutlineBorder= OutlineInputBorder(
  borderRadius: BorderRadius.circular(100),
  borderSide: BorderSide(
    color: ColorConfig().cardGrey3Color(1),
    width: 0.0,
  ),
);

final OutlineInputBorder loginOutlineBorder= OutlineInputBorder(
  borderRadius: BorderRadius.circular(100),
  borderSide: BorderSide(
    color: ColorConfig().cardGrey2Color(1),
    width: 0.4,
  ),
);

final OutlineInputBorder loginActiveOutlineBorder= OutlineInputBorder(
  borderRadius: BorderRadius.circular(100),
  borderSide:  BorderSide(
    color: ColorConfig().cardGreenColor(1),
    width: 0.4,
  ),
);

final OutlineInputBorder loginErrorOutlineBorder= OutlineInputBorder(
  borderRadius: BorderRadius.circular(100),
  borderSide: const BorderSide(
    color: Colors.red,
    width: 0.4,
  ),
);


final OutlineInputBorder commentFieldBoxDecoration= OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: const BorderSide(
    width: 0.0,
    color: Colors.transparent,
  ),
);

final UnderlineInputBorder filedBorderOnlyBottom= UnderlineInputBorder(
  borderSide: BorderSide(color: ColorConfig().cardGrey3Color(1)),
);

const OutlineInputBorder circleRadiusBorder= OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(100)),
  borderSide: BorderSide(
    color: Colors.transparent,
  ),
);

const UnderlineInputBorder filedWithoutBorder= UnderlineInputBorder(
  borderSide: BorderSide.none,
);



