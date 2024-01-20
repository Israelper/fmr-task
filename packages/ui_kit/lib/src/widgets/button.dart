import 'package:flutter/material.dart';

import 'package:ui_kit/ui_kit.dart';

enum _ButtonType {
  primary,
  text,
  outline,
}

const bool _defaultIsLoading = false;
const bool _defaultIsDisabled = false;
const EdgeInsets _defaultPadding = EdgeInsets.symmetric(vertical: UiSizes.xs, horizontal: UiSizes.xs);
const EdgeInsets _defaultMargin = EdgeInsets.zero;
const MainAxisAlignment _rowMainAxisAlignment = MainAxisAlignment.center;
const MainAxisSize _rowMainAxisSize = MainAxisSize.max;

class UiButton extends StatelessWidget {
  const UiButton({
    this.child,
    this.text,
    this.onTap,
    this.onTapDisabled,
    this.isLoading = _defaultIsLoading,
    this.isDisabled = _defaultIsDisabled,
    this.padding = _defaultPadding,
    this.margin = _defaultMargin,
    this.rowMainAxisAlignment = _rowMainAxisAlignment,
    this.rowMainAxisSize = _rowMainAxisSize,
  })  : assert((child == null && text != null) || (child != null && text == null)),
        type = _ButtonType.primary;

  const UiButton.primary({
    this.child,
    this.text,
    this.onTap,
    this.onTapDisabled,
    this.isLoading = _defaultIsLoading,
    this.isDisabled = _defaultIsDisabled,
    this.padding = _defaultPadding,
    this.margin = _defaultMargin,
    this.rowMainAxisAlignment = _rowMainAxisAlignment,
    this.rowMainAxisSize = _rowMainAxisSize,
  })  : assert((child == null && text != null) || (child != null && text == null)),
        type = _ButtonType.primary;

  const UiButton.text({
    this.child,
    this.text,
    this.onTap,
    this.onTapDisabled,
    this.isLoading = _defaultIsLoading,
    this.isDisabled = _defaultIsDisabled,
    this.padding = _defaultPadding,
    this.margin = _defaultMargin,
    this.rowMainAxisAlignment = _rowMainAxisAlignment,
    this.rowMainAxisSize = _rowMainAxisSize,
  })  : assert((child == null && text != null) || (child != null && text == null)),
        type = _ButtonType.text;

  const UiButton.outline({
    this.child,
    this.text,
    this.onTap,
    this.onTapDisabled,
    this.isLoading = _defaultIsLoading,
    this.isDisabled = _defaultIsDisabled,
    this.padding = _defaultPadding,
    this.margin = _defaultMargin,
    this.rowMainAxisAlignment = _rowMainAxisAlignment,
    this.rowMainAxisSize = _rowMainAxisSize,
  })  : assert((child == null && text != null) || (child != null && text == null)),
        type = _ButtonType.outline;

  final _ButtonType type;
  final Widget? child;
  final String? text;
  final Function()? onTap;
  final Function()? onTapDisabled;
  final bool isLoading;
  final bool isDisabled;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final MainAxisAlignment rowMainAxisAlignment;
  final MainAxisSize rowMainAxisSize;

  bool isPrimary() => type == _ButtonType.primary;
  bool isText() => type == _ButtonType.text;
  bool isOutline() => type == _ButtonType.outline;

  Color _backgroundColor(BuildContext context) {
    if (isOutline() && !isDisabled) {
      return Theme.of(context).colorScheme.background;
    } else if (isOutline() && isDisabled) {
      return UiColors.blue.withOpacity(0.4);
    } else if (isText()) {
      return Colors.transparent;
    } else if (isDisabled && !isLoading) {
      return Theme.of(context).disabledColor;
    } else if (isPrimary()) {
      return Theme.of(context).primaryColor;
    } else {
      return Theme.of(context).colorScheme.background;
    }
  }

  Color? _textColor(BuildContext context) {
    if (isDisabled && isText()) {
      return Theme.of(context).disabledColor;
    } else if (isPrimary()) {
      return Theme.of(context).colorScheme.onPrimary;
    } else {
      return Theme.of(context).colorScheme.onSurface;
    }
  }

  Widget _child(BuildContext context) {
    if (child != null) {
      return child ?? Container();
    } else {
      return UiText.button(
        text ?? '',
        color: _textColor(context),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Material(
        color: _backgroundColor(context),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(UiRadius.xs),
            side:
                isOutline() ? BorderSide(color: Theme.of(context).colorScheme.onSurface, width: 0.5) : BorderSide.none),
        child: InkWell(
          borderRadius: BorderRadius.circular(UiRadius.xs),
          onTap: isLoading
              ? null
              : isDisabled
                  ? onTapDisabled
                  : onTap,
          child: Padding(
            padding: padding,
            child: Row(
              mainAxisSize: rowMainAxisSize,
              mainAxisAlignment: rowMainAxisAlignment,
              children: <Widget>[
                if (!isLoading) _child(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
