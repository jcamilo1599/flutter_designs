import 'package:flutter/material.dart';

class RefreshScrollablePage extends StatelessWidget {
  const RefreshScrollablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Refresh scrollable'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          print('Actualizado');
        },
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          itemCount: 6,
          itemBuilder: (_, i) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),
                child: Text('Tarjeta ${(i + 1)}'),
              ),
            );
          },
        ),
      ),
    );
  }
}
