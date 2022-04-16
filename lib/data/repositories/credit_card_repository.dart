import 'package:control_panel/data/services/http/http.dart';
import 'package:control_panel/data/services/http/http_response.dart';
import 'package:control_panel/domain/models/credit_card.dart';

class CreditCardRepository {
  late final Http http;

  CreditCardRepository() {
    http = Http('http://192.168.0.105:8000/api');
  }

  Future<List<CreditCard>> all() async {
    HttpResponse response = await http.get('/credit-cards');
    return (response.data as List).map((e) => CreditCard.fromJson(e)).toList();
  }
}
