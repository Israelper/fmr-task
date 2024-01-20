import 'package:flutter/material.dart';

class UiProgress extends StatelessWidget {
  const UiProgress({
    this.color,
    this.backgroundColor,
    this.size = const Size.square(50),
    this.margin = const EdgeInsets.all(0),
  });

  final Color? color;
  final Color? backgroundColor;
  final Size size;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: SizedBox(
        width: size.width,
        height: size.width,
        child: CircularProgressIndicator(
          color: color ?? Theme.of(context).primaryColor,
          backgroundColor: backgroundColor ?? Theme.of(context).backgroundColor,
          strokeWidth: 7,
        ),
      ),
    );
  }
}
