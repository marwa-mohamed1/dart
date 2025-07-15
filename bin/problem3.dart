abstract class Payment {}

class Card extends Payment {
  String cardNumber = "";
  double amount = 0;
}

class Cash extends Payment {
  double amount = 0;
}

void processPayment(dynamic payment) {
  double conversionRate = 30.0; 

  if (payment is Card) {
    payment
      ..cardNumber = "1234-5678-9012"
      ..amount = 100.0;
    print("Card Payment: ${payment.amount} USD (${payment.amount * conversionRate} EGP)");
  } else if (payment is Cash) {
    payment.amount = 500.0;
    print("Cash Payment: ${payment.amount} EGP");
  } else {
    print("Unknown payment method");
  }
}

void main() {
  var cardPayment = Card();
  var cashPayment = Cash();
  var unknown = "check";

  processPayment(cardPayment);
  processPayment(cashPayment);
  processPayment(unknown);
}
