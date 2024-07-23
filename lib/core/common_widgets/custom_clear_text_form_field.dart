// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomClearTextFormField extends StatefulWidget {
  final TextEditingController controller;
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
  final bool showClearButton;

  CustomClearTextFormField({
    super.key,
    required this.controller,
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
    this.showClearButton = false,
  });

  @override
  State<CustomClearTextFormField> createState() => _CustomClearTextFormFieldState();
}

class _CustomClearTextFormFieldState extends State<CustomClearTextFormField> {
  final bool readOnly = false;
  bool? clearButton = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.isSuffix
          ? widget.onChanged
          : (value) {
              setState(() {});
              if (value.isNotEmpty) {
                clearButton = true;
              } else {
                clearButton = false;
              }
            },
      controller: widget.controller,
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
        label: Text(widget.label ?? "label"),
        labelStyle: TextStyle(
          fontSize: 16.sp,
          color: widget.lableColor ?? Colors.black,
        ),
        suffixIcon: widget.isSuffix
            ? widget.suffix
            : clearButton == true
                ? IconButton(
                    icon: const Icon(
                      Icons.clear,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      clearButton = false;
                      widget.controller.clear();
                      setState(() {}); // Update the UI
                    },
                  )
                : const SizedBox.shrink(),
        prefixIcon: widget.isPrefix ? widget.prefix : null,
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
