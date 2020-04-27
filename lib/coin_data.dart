import 'package:http/http.dart' as http;
import 'dart:convert';

const apiKey = '661EAA33-CFD2-42D0-BA0B-470F28938C87';
const baseURL = 'https://rest-sandbox.coinapi.io';
const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future<dynamic> getCoinData() async {
    const url = '$baseURL/v1/exchangerate/$crypto/$currency?apikey=$apiKey';
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    }
  }
}
