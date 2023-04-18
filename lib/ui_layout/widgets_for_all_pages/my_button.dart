import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.child,
    required this.onPressed,
    this.backgroundColor,
  }) : super(key: key);
  final Widget child;
  final VoidCallback onPressed;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: const ButtonStyle().copyWith(
        backgroundColor: MaterialStatePropertyAll(backgroundColor),
      ),
      child: child,
    );
  }
}
