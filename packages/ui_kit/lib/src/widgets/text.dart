import 'package:flutter/material.dart';

import 'package:ui_kit/ui_kit.dart';

class UiText extends StatelessWidget {
  const UiText(
    this.text, {
    required this.style,
    this.color,
    this.textAlign,
    this.decoration,
    this.maxLines,
    this.softWrap,
    this.overflow,
    this.forceOneLine = false,
    this.isBold = false,
    Key? key,
  }) : super(key: key);

  final String text;
  final UiTypography style;
  final Color? color;
  final TextAlign? textAlign;
  final TextDecoration? decoration;
  final int? maxLines;
  final bool? softWrap;
  final TextOverflow? overflow;
  final bool forceOneLine;
  final bool isBold;

  const UiText.h1(
    this.text, {
    this.textAlign,
    this.decoration,
    this.maxLines,
    this.softWrap,
    this.overflow,
    this.forceOneLine = false,
    this.color,
    this.isBold = false,
    Key? key,
  })  : style = UiTypography.h1,
        super(key: key);

  const UiText.h2(
    this.text, {
    this.textAlign,
    this.decoration,
    this.maxLines,
    this.softWrap,
    this.overflow,
    this.forceOneLine = false,
    this.color,
    this.isBold = false,
    Key? key,
  })  : style = UiTypography.h2,
        super(key: key);

  const UiText.h3(
    this.text, {
    this.textAlign,
    this.decoration,
    this.maxLines,
    this.softWrap,
    this.overflow,
    this.forceOneLine = false,
    this.color,
    this.isBold = false,
    Key? key,
  })  : style = UiTypography.h3,
        super(key: key);

  const UiText.h4(
    this.text, {
    this.textAlign,
    this.decoration,
    this.maxLines,
    this.softWrap,
    this.overflow,
    this.forceOneLine = false,
    this.color,
    this.isBold = false,
    Key? key,
  })  : style = UiTypography.h4,
        super(key: key);

  const UiText.h5(
    this.text, {
    this.textAlign,
    this.decoration,
    this.maxLines,
    this.softWrap,
    this.overflow,
    this.forceOneLine = false,
    this.color,
    this.isBold = false,
    Key? key,
  })  : style = UiTypography.h5,
        super(key: key);

  const UiText.h6(
    this.text, {
    this.textAlign,
    this.decoration,
    this.maxLines,
    this.softWrap,
    this.overflow,
    this.forceOneLine = false,
    this.color,
    this.isBold = false,
    Key? key,
  })  : style = UiTypography.h6,
        super(key: key);

  const UiText.subtitle1(
    this.text, {
    this.textAlign,
    this.decoration,
    this.maxLines,
    this.softWrap,
    this.overflow,
    this.forceOneLine = false,
    this.color,
    this.isBold = false,
    Key? key,
  })  : style = UiTypography.subtitle1,
        super(key: key);

  const UiText.subtitle2(
    this.text, {
    this.textAlign,
    this.decoration,
    this.maxLines,
    this.softWrap,
    this.overflow,
    this.forceOneLine = false,
    this.color,
    this.isBold = false,
    Key? key,
  })  : style = UiTypography.subtitle2,
        super(key: key);

  const UiText.body1(
    this.text, {
    this.textAlign,
    this.decoration,
    this.maxLines,
    this.softWrap,
    this.overflow,
    this.forceOneLine = false,
    this.color,
    this.isBold = false,
    Key? key,
  })  : style = UiTypography.body1,
        super(key: key);

  const UiText.body2(
    this.text, {
    this.textAlign,
    this.decoration,
    this.maxLines,
    this.softWrap,
    this.overflow,
    this.forceOneLine = false,
    this.color,
    this.isBold = false,
    Key? key,
  })  : style = UiTypography.body2,
        super(key: key);

  const UiText.button(
    this.text, {
    this.textAlign,
    this.decoration,
    this.maxLines,
    this.softWrap,
    this.overflow,
    this.forceOneLine = false,
    this.color,
    this.isBold = false,
    Key? key,
  })  : style = UiTypography.button,
        super(key: key);

  const UiText.caption(
    this.text, {
    this.textAlign,
    this.decoration,
    this.maxLines,
    this.softWrap,
    this.overflow,
    this.forceOneLine = false,
    this.color,
    this.isBold = false,
    Key? key,
  })  : style = UiTypography.caption,
        super(key: key);

  const UiText.overline(
    this.text, {
    this.textAlign,
    this.decoration,
    this.maxLines,
    this.softWrap,
    this.overflow,
    this.forceOneLine = false,
    this.color,
    this.isBold = false,
    Key? key,
  })  : style = UiTypography.overline,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      forceOneLine ? Characters(text).toList().join('\u{200B}') : text,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      style: style.toTextStyle(context)?.copyWith(
            color: color,
            decoration: decoration ?? TextDecoration.none,
            fontWeight: isBold ? FontWeight.bold : null,
          ),
    );
  }
}
