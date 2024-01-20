import 'package:flutter/material.dart';

enum UiTypography {
  h1,
  h2,
  h3,
  h4,
  h5,
  h6,
  subtitle1,
  subtitle2,
  body1,
  body2,
  button,
  caption,
  overline,
}

extension UiTypographyExtension on UiTypography {
  TextStyle? toTextStyle(BuildContext context) {
    switch (this) {
      case UiTypography.h1:
        return Theme.of(context).textTheme.displayLarge;
      case UiTypography.h2:
        return Theme.of(context).textTheme.displayMedium;
      case UiTypography.h3:
        return Theme.of(context).textTheme.displaySmall;
      case UiTypography.h4:
        return Theme.of(context).textTheme.headlineMedium;
      case UiTypography.h5:
        return Theme.of(context).textTheme.headlineSmall;
      case UiTypography.h6:
        return Theme.of(context).textTheme.titleLarge;
      case UiTypography.subtitle1:
        return Theme.of(context).textTheme.titleMedium;
      case UiTypography.subtitle2:
        return Theme.of(context).textTheme.titleSmall;
      case UiTypography.body1:
        return Theme.of(context).textTheme.bodyLarge;
      case UiTypography.body2:
        return Theme.of(context).textTheme.bodyMedium;
      case UiTypography.button:
        return Theme.of(context).textTheme.labelLarge;
      case UiTypography.caption:
        return Theme.of(context).textTheme.bodySmall;
      case UiTypography.overline:
        return Theme.of(context).textTheme.labelSmall;
    }
  }
}
