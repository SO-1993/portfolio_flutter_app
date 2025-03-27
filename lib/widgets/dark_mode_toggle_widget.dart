import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme/theme_provider.dart';

class DarkModeToggleWidget extends StatelessWidget {
  const DarkModeToggleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
            icon: Icon(
              Theme.of(context).brightness == Brightness.dark
                  ? Icons.light_mode
                  : Icons.dark_mode,
            ),
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
          );
  }
}
