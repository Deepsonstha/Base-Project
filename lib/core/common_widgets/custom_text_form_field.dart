// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final String? hintText;
  final String? label;
  final Widget? prefix;
  final Widget? suffix;
  bool isPrefix;
  bool isSuffix;
  bool isObscureText;
  final Iterable<String>? autofillHints;
  final Color? lableColor;

  CustomTextFormField({
    super.key,
    this.controller,
    this.onChanged,
    this.validator,
    this.hintText,
    this.label,
    this.prefix,
    this.suffix,
    this.isPrefix = false,
    this.isSuffix = false,
    this.isObscureText = false,
    this.autofillHints,
    this.lableColor,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final bool readOnly = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      onChanged: widget.onChanged,
      obscureText: widget.isObscureText,
      readOnly: readOnly,
      validator: widget.validator,
      autofillHints: widget.autofillHints,
      autovalidateMode: AutovalidateMode.disabled,
      autocorrect: true,
      enableSuggestions: true,
      cursorColor: Colors.green,
      cursorErrorColor: Colors.red,
      enabled: true,
      spellCheckConfiguration: const SpellCheckConfiguration(
        misspelledSelectionColor: Colors.red,
      ),
      decoration: InputDecoration(
        label: const Text("label"),
        labelStyle: TextStyle(
          fontSize: 16.sp,
          color: widget.lableColor ?? Colors.black,
        ),
        suffixIcon: (widget.isSuffix) ? widget.suffix : null,
        prefixIcon: widget.isPrefix == true ? widget.prefix : null,
        counterText: '',
        contentPadding: EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 10.0.w),
        filled: true,
        fillColor: Colors.white,
        enabled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: const BorderSide(
            color: Colors.green,
          ),
        ),
        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontSize: 12.sp,
          color: Colors.grey.shade300,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: BorderSide(
            color: Colors.grey.shade400,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
