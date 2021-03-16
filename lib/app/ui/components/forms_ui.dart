import 'package:flutter/material.dart';

Widget forms(
    {onChanged,
    TextEditingController? controller,
    String? field,
    String Function()? error,
    type,
    validator,
    TextInputAction? action,
    Icon? icon,
    formated}) {
  return Padding(
    padding: EdgeInsets.only(top: 2),
    child: Container(
      height: 44,
      child: Center(
        child: TextFormField(
          textInputAction: action,
          controller: controller,
          keyboardType: type,
          inputFormatters: formated,
          validator: validator,
          onChanged: onChanged,
          decoration: InputDecoration(
            prefixIcon: icon,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            hintText: field,
            labelText: field,
            errorText: error == null ? null : error(),
          ),
        ),
      ),
    ),
  );
}
