import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ui_kit/ui_kit.dart';

class UiTextField extends StatefulWidget {
  const UiTextField(
      {super.key,
      this.hint,
      this.label,
      this.title,
      this.value = '',
      this.onChanged,
      this.onSubmitted,
      this.onSaved,
      this.padding = const EdgeInsets.symmetric(vertical: UiSizes.m),
      this.margin = EdgeInsets.zero,
      this.textInputAction = TextInputAction.done,
      this.textCapitalization = TextCapitalization.none,
      this.flex = 1,
      this.isFlexible = false,
      this.textAlign = TextAlign.start,
      this.textInputType = TextInputType.text,
      this.obscureText = false,
      this.suffixIcon,
      this.prefixIcon,
      this.controller,
      this.autofocus = false,
      this.maxLines = 1,
      this.minLines,
      this.forceDirection = false,
      this.validator,
      this.inputFormatters,
      this.disabled = false,
      this.focusNode,
      this.disabledColor = UiColors.hintColor});

  final String? hint;
  final String? label;
  final String? title;
  final String? value;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final Function(String?)? onSaved;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final int flex;
  final bool isFlexible;
  final TextAlign textAlign;
  final TextInputType textInputType;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final bool autofocus;
  final int? maxLines;
  final int? minLines;
  final bool forceDirection;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final bool disabled;
  final Color? disabledColor;

  final FocusNode? focusNode;

  @override
  _UiTextFieldState createState() => _UiTextFieldState();
}

class _UiTextFieldState extends State<UiTextField> {
  TextEditingController? _controller = TextEditingController();
  String? text;
  bool _hasFocus = false;

  bool isNullOrEmpty(String? value) => value == null || value.isEmpty;

  void _setFocus(bool hasFocus) => setState(() => _hasFocus = hasFocus);

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? _controller;
    _controller!.text = widget.value ?? '';
    setState(() {
      text = isNullOrEmpty(widget.value)
          ? isNullOrEmpty(widget.hint)
              ? isNullOrEmpty(widget.label)
                  ? ''
                  : widget.label
              : widget.hint
          : widget.value;
    });
  }

  Widget _textField() {
    return Padding(
      padding: widget.margin,
      child: Focus(
        onFocusChange: _setFocus,
        child: TextFormField(
          keyboardAppearance: MediaQuery.of(context).platformBrightness,
          maxLines: widget.maxLines,
          minLines: widget.minLines,
          enabled: !widget.disabled,
          controller: _controller,
          onChanged: (String value) {
            setState(() {
              text = isNullOrEmpty(widget.value)
                  ? isNullOrEmpty(widget.hint)
                      ? isNullOrEmpty(widget.label)
                          ? ''
                          : widget.label
                      : widget.hint
                  : value;
            });
            widget.onChanged?.call(value);
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: widget.validator,
          autofocus: widget.autofocus,
          focusNode: widget.focusNode,
          style: UiTypography.body2.toTextStyle(context)?.copyWith(
                color: widget.disabled && (_controller?.text ?? '').isEmpty ? widget.disabledColor : Colors.black,
              ),
          textInputAction: widget.textInputAction,
          inputFormatters: widget.inputFormatters,
          textAlign: widget.textAlign,
          obscureText: widget.obscureText,
          textCapitalization: widget.textCapitalization,
          keyboardType: widget.textInputType,
          onSaved: widget.onSaved,
          onFieldSubmitted: widget.onSubmitted ?? (_) {},
          decoration: InputDecoration(
            labelText: widget.label,
            hintText: widget.hint,
            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.suffixIcon,
            contentPadding: widget.padding,
            fillColor: UiColors.neutralGrey100,
            //filled: widget.disabled,
            isDense: true,
            errorStyle: UiTypography.caption.toTextStyle(context)?.copyWith(color: UiColors.negative500),
            labelStyle: UiTypography.body2.toTextStyle(context)?.copyWith(
                color: (_hasFocus || (_controller?.text ?? '').isNotEmpty) && !widget.disabled
                    ? Colors.black
                    : Colors.black),
            hintStyle: UiTypography.body2.toTextStyle(context)?.copyWith(color: UiColors.hintColor),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isFlexible) {
      return Flexible(
        flex: widget.flex,
        child: _textField(),
      );
    } else {
      return _textField();
    }
  }
}
