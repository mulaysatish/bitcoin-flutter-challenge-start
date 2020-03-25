import 'package:bitcoin_ticker/services/network.dart';
import 'package:bitcoin_ticker/utility/constants.dart';

class CurrencyExchangeModel {
  dynamic getCryptoFiatExchangeRate(String cryptoCurrency, String selectedCurrency) async {
    NetworkHelper networkHelper = NetworkHelper(url: '$coinAPIBaseUrl/BTC/$selectedCurrency');
    var exchangeRate = await networkHelper.getData();

    print(exchangeRate);
    return exchangeRate;
  }
}
