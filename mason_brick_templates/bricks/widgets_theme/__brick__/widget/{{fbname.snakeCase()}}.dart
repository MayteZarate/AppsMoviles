import 'package:flutter/material.dart';
import '/theme/app_theme.dart';

class {{fbname.pascalCase()}} extends StatelessWidget {
  // Atributos de la clase.
  final VoidCallback? onPressed;
  final Widget child;

  const {{fbname.pascalCase()}}({
    super.key,
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 0,
        backgroundColor: {{atname.pascalCase()}}.appTheme.primaryColor,
        disabledBackgroundColor: Colors.grey,
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
