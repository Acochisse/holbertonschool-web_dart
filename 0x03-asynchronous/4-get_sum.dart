// Create a function calculateTotal() that calculates the total price of items for a certain user.

// Function prototype : Future<double> calculateTotal()

// Gets the user data by calling the provided functionfetchUserData()
// Gets the user orders by calling the provided function fetchUserOrders(id) which accepts one argument : ID of the user
// Gets the products price by calling the provided function fetchProductPrice(product) which accepts one argument : product name
// Returns the total price of items
// Must use try-catch

// If an error occurs the function should return -1
import 'dart:convert';

Future<double> calculateTotal() async {
    try {
        double total = 0.0;

        final Map<String, dynamic> userData = json.decode(await fetchUserData());
        final String userD = userData['id'];
        final List<dynamic> userOrders = json.decode(await fetchUserOrders(userD));
        for (int i = 0; i < userOrders.length; i++) {
            total += json.decode(await fetchProductPrice(userOrders[i]));
        }
        return total;
    } catch (e) {
        print ('error caught: $e');
        return -1;
    }
}



Future<String> fetchUserOrders(String id) async {
  var orders = {
    "7ee9a243-01ca-47c9-aa14-0149789764c3": ["pizza", "orange"]
  };
  try {
    return Future.delayed(
        const Duration(seconds: 2), () => json.encode(orders[id]));
  } catch (err) {
    return "error caught : $err";
  }
}

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<String> fetchProductPrice(product) async {
  var products = {"pizza": 20.30, "orange": 10, "water": 5, "soda": 8.5};
  try {
    return Future.delayed(
        const Duration(seconds: 2), () => json.encode(products[product]));
  } catch (err) {
    return "error caught : $err";
  }
}
