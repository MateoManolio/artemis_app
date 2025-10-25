import 'package:flutter/material.dart';
import 'package:artemis_app/src/presentation/pages/details_screen/details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.of(context).pushNamed(DetailsScreen.routeName),
          child: const Text('Ir a Details'),
        ),
      ),
    );
  }
}