import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final String initialValue;
  final double? width;
  final void Function(String) onChanged;

  const CustomTextFormField({
    Key? key,
    required this.label,
    required this.onChanged,
    this.initialValue = '',
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: width ?? double.infinity,
          child: TextFormField(
            onChanged: onChanged,
            initialValue: initialValue,
            validator: (value) {
              return (value == null || value.isEmpty) ? '' : null;
            },
            decoration: InputDecoration(
              hintText: label,
            ),
          ),
        ),
      ],
    );
  }
}
