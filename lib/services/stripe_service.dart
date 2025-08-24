import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:payment/utils/constant.dart';

class StripeService {
  final String _baseUrl = "https://api.stripe.com/v1/payment_intents";

  Future<Map<String, dynamic>> createPaymentIntent({
    required int amount, // cents
    required String currency,
  }) async {
    try {
      final response = await http.post(
        Uri.parse(_baseUrl),
        headers: {
          "Authorization": "Bearer ${StripeKeys.secretKey}",
          "Content-Type": "application/x-www-form-urlencoded",
        },
        body: {"amount": amount.toString(), "currency": currency},
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception("Stripe error: ${response.body}");
      }
    } catch (e) {
      rethrow;
    }
  }
}
