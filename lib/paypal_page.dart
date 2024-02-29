import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:flutterpaypal/success_page.dart';

class PayPalPage extends StatelessWidget {
  const PayPalPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PaypalCheckoutView(
        sandboxMode: true,
        clientId:
            "AUoojpTulF4eyE-xT_x_HomPBb7IpXaHtIzExy225L6JrCl5HqjQgoObt6CwJgZ8jBC-d8TjMfCsYZEO",
        secretKey:
            "EPNKFUYvPDu-OGBA3_cIO9QvXgkgzp2mYieJ5F20gVhmLUYIc7qn9xp-PkqvTUvkR2KvqjVJ-7MpufdI",
        transactions: const [
          {
            "amount": {
              "total": '100',
              "currency": "USD",
              "details": {
                "subtotal": '100',
                "shipping": '0',
                "shipping_discount": 0
              }
            },
            "description": "The payment transaction description.",
            // "payment_options": {
            //   "allowed_payment_method":
            //       "INSTANT_FUNDING_SOURCE"
            // },
            "item_list": {
              "items": [
                {
                  "name": "Apple",
                  "quantity": 4,
                  "price": '10',
                  "currency": "USD"
                },
                {
                  "name": "Pineapple",
                  "quantity": 5,
                  "price": '12',
                  "currency": "USD"
                }
              ],

              // Optional
              //   "shipping_address": {
              //     "recipient_name": "Tharwat samy",
              //     "line1": "tharwat",
              //     "line2": "",
              //     "city": "tharwat",
              //     "country_code": "EG",
              //     "postal_code": "25025",
              //     "phone": "+00000000",
              //     "state": "ALex"
              //  },
            }
          }
        ],
        note: "Contáctanos en caso de alguna duda.",
        onSuccess: (Map params) async {
          log("onSuccess: $params");
          await Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => const SuccessPage(),
          ));
        },
        onError: (error) {
          log("onError: $error");
          Navigator.pop(context);

        },
        onCancel: () {
          print('cancelled:');
          Navigator.pop(context);

        },
      ),
    );
  }
}
