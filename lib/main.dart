import 'package:flutter/material.dart';
import 'ui/pages/pages.dart';
import 'shared/theme/theme.dart';

void main() {
  runApp(const NubankInterface());
}

class NubankInterface extends StatelessWidget {
  const NubankInterface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const HomePage(),
    );
  }
}
