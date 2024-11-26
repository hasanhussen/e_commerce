// import 'dart:developer';
// import 'package:ecommerce/controller/paypal_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
// import 'package:get/get.dart';

// class PaypalPaymentDemo extends StatelessWidget {
//   const PaypalPaymentDemo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: TextButton(
//           onPressed: () {
//             Navigator.of(context).push(MaterialPageRoute(
//               builder: (BuildContext context) => PaypalCheckoutView(
//                 sandboxMode: true,
//                 clientId:
//                     "AQhKVo8xe0Y9KvrfTQh5W6qfH6Woy-V6615yRz7s6LAe2dANUrrw10Dw59YP25NkDEjGCEtmPSOWIT-p",
//                 secretKey:
//                     "EKaZc1_3b5_nJE0qLAuIBTTHvy7J6CpzKMjFKWDfvWrDHnOPoHJe_kcqHkF1fzwm2g2QbA0005AFTNpu",
//                 transactions: [
//                   {
//                     "amount": {
//                       "total": palController.totalprice.toString(),
//                       "currency": "USD",
//                       "details": {
//                         "subtotal": palController.priceOrder,
//                         "shipping": '10',
//                         "shipping_discount": 0
//                       }
//                     },
//                     "description": "The payment transaction description.",
//                     // "payment_options": {
//                     //   "allowed_payment_method":
//                     //       "INSTANT_FUNDING_SOURCE"
//                     // },
//                     "item_list": {
//                       "items": palController.items,

//                       // Optional
//                       //   "shipping_address": {
//                       //     "recipient_name": "Tharwat samy",
//                       //     "line1": "tharwat",
//                       //     "line2": "",
//                       //     "city": "tharwat",
//                       //     "country_code": "EG",
//                       //     "postal_code": "25025",
//                       //     "phone": "+00000000",
//                       //     "state": "ALex"
//                       //  },
//                     }
//                   }
//                 ],
//                 note: "Contact us for any questions on your order.",
//                 onSuccess: (Map params) async {
//                   log("onSuccess: $params");
//                   Navigator.pop(context);
//                 },
//                 onError: (error) {
//                   log("onError: $error");
//                   Navigator.pop(context);
//                 },
//                 onCancel: () {
//                   print('cancelled:');
//                   Navigator.pop(context);
//                 },
//               ),
//             ));
//           },
//           child: const Text('Pay with paypal'),
//         ),
//       ),
//     );
//   }
// }
