import 'package:flutter/material.dart';
import 'package:hola_home/core/constants/colors.dart';
import 'package:hola_home/core/constants/styles.dart';

class CustomTFF extends StatefulWidget {
  const CustomTFF(
      {Key? key,
      required this.label,
      // required this.controller,
      this.isPassword = false})
      : super(key: key);

  final String label;
  // final TextEditingController controller;
  final bool isPassword;

  @override
  State<CustomTFF> createState() => _CustomTFFState();
}

class _CustomTFFState extends State<CustomTFF> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword ? _obscureText : false,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _obscureText
                      ? Icons.visibility
                      : Icons.visibility_off_outlined,
                  color: AppColors.grey,
                ),
                onPressed: (() {
                  _togglePasswordVisibility();
                }),
              )
            : null,
        fillColor: AppColors.fillColorTFF,
        filled: true,
        labelText: widget.label,
        labelStyle: AppTextStyles.poppinsBlackBold20,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: const BorderSide(color: AppColors.yellow, width: 2)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: const BorderSide(color: AppColors.grey)),
      ),
    );
  }
}
