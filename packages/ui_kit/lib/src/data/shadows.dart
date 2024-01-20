import 'package:flutter/material.dart';

class UiShadows {
  static const List<BoxShadow> shadow100 = <BoxShadow>[
    BoxShadow(
        blurRadius: 8,
        offset: Offset(0, 1),
        spreadRadius: 0,
        color: Color(0x13000000) // = #000000 with opacity 7.5%
        ),
    BoxShadow(
        blurRadius: 4, offset: Offset(0, 4), color: Color(0x38B1BCC9) // = #B1BCC9 with opacity 22%
        ),
  ];
  static const List<BoxShadow> shadow200 = <BoxShadow>[
    BoxShadow(
        blurRadius: 13,
        offset: Offset(0, 3),
        spreadRadius: -20,
        color: Color(0x52A1A5AC) // = #A1A5AC with opacity 32%
        ),
    BoxShadow(
        blurRadius: 4, offset: Offset(0, 4), color: Color(0x38B1BCC9) // = #B1BCC9 with opacity 22%
        ),
  ];

  static const List<BoxShadow> shadow300 = <BoxShadow>[
    BoxShadow(
        blurRadius: 17,
        offset: Offset(0, 14),
        color: Color(0x5EA1A5AC) // = #A1A5AC with opacity 37%
        ),
    BoxShadow(
        blurRadius: 4, offset: Offset(0, 1), color: Color(0x2E1B283A) // = #1B283A with opacity 18%
        ),
  ];

  static const List<BoxShadow> shadow500 = <BoxShadow>[
    BoxShadow(
        blurRadius: 17,
        offset: Offset(0, 14),
        color: Color(0xABA1A5AC) // = #A1A5AC with opacity 67%
        ),
    BoxShadow(
        blurRadius: 4, offset: Offset(0, 1), color: Color(0x2E1B283A) // = #1B283A with opacity 18%
        ),
  ];

  static const List<BoxShadow> shadow50 = <BoxShadow>[
    BoxShadow(
        blurRadius: 0.5,
        offset: Offset(0, 0.5),
        spreadRadius: 0,
        color: Color(0x13000000) // = #000000 with opacity 7.5%
        ),
    BoxShadow(
        blurRadius: 1, offset: Offset(0, 1), color: Color(0x38B1BCC9) // = #B1BCC9 with opacity 22%
        ),
  ];
}


// note: to find the hex value of a opacity you can use the following: https://gist.github.com/lopspower/03fb1cc0ac9f32ef38f4
