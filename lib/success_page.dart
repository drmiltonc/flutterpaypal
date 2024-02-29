import 'package:flutter/material.dart';
import 'package:flutterpaypal/main.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
        
          children: [
            const Text('Compra exitosa'),
            FilledButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const CheckoutPage(),
                  ));
                },
                child: const Text('Home'))
          ],
        ),
      ),
    );
  }
}
