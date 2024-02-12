import 'package:chat_material3/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomField extends StatefulWidget {
  final IconData icon;
  final String lable;
  final TextEditingController controller;
  final bool isPass;
  const CustomField({
    super.key,
    required this.icon,
    required this.lable,
    required this.controller,
    this.isPass = false,
  });

  @override
  State<CustomField> createState() => _CustomFieldState();
}

class _CustomFieldState extends State<CustomField> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: TextFormField(
        validator: (value) => value!.isEmpty ? "Requird" : null,
        obscureText: widget.isPass ? obscure : false,
        controller: widget.controller,
        decoration: InputDecoration(
          suffixIcon: widget.isPass
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      obscure = !obscure;
                    });
                  },
                  icon: const Icon(Iconsax.eye))
              : const SizedBox(),
          contentPadding: const EdgeInsets.all(16),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: kPrimaryColor)),
          labelText: widget.lable,
          prefixIcon: Icon(widget.icon),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
