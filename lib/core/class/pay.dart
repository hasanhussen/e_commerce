import 'dart:developer';

import 'package:ecommerce/controller/checkout_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:get/get.dart';

class PayPal extends StatelessWidget {
  const PayPal({super.key});

  @override
  Widget build(BuildContext context) {
    CheckoutController checkoutController = Get.find();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => PaypalCheckoutView(
              sandboxMode: true,
              clientId: "YOUR CLIENT ID",
              secretKey: "YOUR SECRET KEY",
              transactions: [
                {
                  "amount": {
                    "total": checkoutController.result,
                    "currency": "USD",
                    "details": {
                      "subtotal": checkoutController.priceorders,
                      "shipping": '10',
                      "shipping_discount": 0
                    }
                  },
                  "description": "The payment transaction description.",
                  // "payment_options": {
                  //   "allowed_payment_method":
                  //       "INSTANT_FUNDING_SOURCE"
                  // },
                  "item_list": {
                    "items": checkoutController.items,

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
              note: "Contact us for any questions on your order.",
              onSuccess: (Map params) async {
                log("onSuccess: $params");
                checkoutController.paydone = true;
                Navigator.pop(context);
                print(checkoutController.paydone);
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
          ));
        },
        child: const Text('Pay with paypal'),
      ),
    );
  }
}
