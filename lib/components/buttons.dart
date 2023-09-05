import 'package:esm_project/components/styles.dart';
import 'package:flutter/material.dart';

class LoginBtn extends StatelessWidget {
  final void Function()? onPressed;
  final Widget child;
  const LoginBtn({super.key, required this.child, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: gradientColor,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(onPressed: onPressed, child: child),
    );
  }
}
