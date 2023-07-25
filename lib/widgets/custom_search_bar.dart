import 'package:flutter/material.dart';

class CustomSearhBar extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode? node;
  final VoidCallback onTap;
  const CustomSearhBar(
      {super.key, required this.controller, this.node, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
      focusNode: node,
      controller: controller,
      autofocus: false,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          suffixIcon: const Icon(Icons.cancel),
          filled: true,
          fillColor: Colors.grey.shade200,
          hintText: "Search on STStore",
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
