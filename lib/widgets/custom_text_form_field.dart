import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  CustomTextFormField({
    super.key,
    this.isPassword = false,
    required this.text,
    this.validator,
    required this.controller,
    this.keyboardType

  });
  bool isPassword;
  Widget? suffixIcon;
  String text;
  String? Function(String?)? validator;
  TextEditingController controller;
  TextInputType? keyboardType;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool _obscureText;
  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  void toggleObscure() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      validator:widget.validator,
      obscureText: _obscureText,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: toggleObscure,
                child: _obscureText
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
              )
            : widget.suffixIcon,
        suffixIconColor: Color(0XFF898f9c),
        hintText: widget.text,

        hintStyle: TextStyle(
          fontSize: 16,
          fontFamily: "inter",
          color: Color(0XFF898f9c),
        ),
        fillColor: Color.fromRGBO(214, 223, 241, 0.47),
        filled: true,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(width: 1, color: Color(0xFF898F9C)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(width: 1, color: Color(0XFF898F9C)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(width: 1, color: Color(0XFF898F9C)),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(width: 1, color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.red),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
