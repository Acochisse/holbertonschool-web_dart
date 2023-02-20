// function that converts a celsius temperature to fahrenheit. results should be rounded to 2 places
List<double> convertToF(List<double> temperaturesInC) {
    List<double> temperatures = new ArrayList<>();
    for (double temperature : temperaturesInC) {
        temperatures.add(temperature * 1.8 + 32);
    }
    return temperatures;
}