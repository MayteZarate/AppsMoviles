import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class {{fbname.pascalCase()}} extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final bool transparent;

  const {{fbname.pascalCase()}}({
    super.key,
    required this.onPressed,
    required this.child,
    this.transparent = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: !transparent
          ? ButtonStyle(
              backgroundColor: WidgetStatePropertyAll({{atname.pascalCase()}}.appTheme.primaryColor),
              overlayColor: WidgetStateProperty.all(Colors.indigo.withOpacity(0.9)),
              shape: WidgetStateProperty.all(const StadiumBorder()),
            )
          : null,
      child: child,
    );
  }
}
