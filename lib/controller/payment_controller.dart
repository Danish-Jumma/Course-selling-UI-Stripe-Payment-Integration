import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';
import 'package:payment/utils/constant.dart';
import '../services/stripe_service.dart';

class PaymentController extends GetxController {
  final StripeService _stripeService = StripeService();
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    Stripe.publishableKey = StripeKeys.publishableKey;
  }

  Future<void> makePayment({
    required double price,
    String currency = "usd",
  }) async {
    try {
      isLoading.value = true;

      // Convert price to cents (Stripe requires amount in smallest unit)
      int amount = (price * 100).toInt();

      // 1. Create PaymentIntent
      final paymentIntent = await _stripeService.createPaymentIntent(
        amount: amount,
        currency: currency,
      );

      // 2. Init Payment Sheet
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: paymentIntent['client_secret'],
          merchantDisplayName: "Course Store",
          style: ThemeMode.system,
        ),
      );

      // 3. Present Payment Sheet
      await Stripe.instance.presentPaymentSheet();

      Get.snackbar("✅ Success", "Payment completed!");
    } catch (e) {
      Get.snackbar(
        "❌ Error",
        e.toString(),
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } finally {
      isLoading.value = false;
    }
  }
}
