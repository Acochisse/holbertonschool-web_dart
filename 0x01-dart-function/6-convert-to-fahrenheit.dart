// function that converts a celsius temperature to fahrenheit. results should be rounded to 2 places
// use .toStringFixed(2) to round to 2 places in the function

List<double> convertToF(List<double> temperaturesInC) {
    List<double> temperatures = new ArrayList<>();
    for (double temp : temperaturesInC) {
        temperatures.add((temp * 9 / 5).toStringFixed(2) + 32);
    }
    return temperatures;
}