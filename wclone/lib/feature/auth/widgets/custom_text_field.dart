import 'package:flutter/material.dart';
import 'package:wclone/common/extension/custom_theme_extension.dart';
import 'package:wclone/common/utils/coloors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.hintText,
    this.readOnly,
    this.textAlign,
    this.keyboardType,
    this.prefixText,
    this.onTap,
    this.suffixIcon,
    this.onChanged,
  });

  final TextEditingController? controller;
  final String? hintText;
  final bool? readOnly;
  final TextAlign? textAlign;
  final TextInputType? keyboardType;
  final String? prefixText;
  final VoidCallback? onTap;
  final Widget? suffixIcon;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      controller: controller,
      readOnly: readOnly ?? false,
      textAlign: textAlign ?? TextAlign.center,
      keyboardType: readOnly == null ? keyboardType : null,
      decoration: InputDecoration(
          suffix: suffixIcon,
          hintText: hintText,
          prefixText: prefixText,
          isDense: true,
          hintStyle: TextStyle(color: context.theme.greyColor),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
            color: Coloors.greenDark,
          )),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Coloors.greenDark, width: 2))),
    );
  }
}
