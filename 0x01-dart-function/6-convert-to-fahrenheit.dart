// function that converts a celsius temperature to fahrenheit. results should be rounded to 2 places
List<double> convertToF(List<double> temperaturesInC) {
    List<double> temperaturesInF = [];
    for (double temp in temperaturesInC) {
        temperaturesInF.add((temp * 9 / 5) + 32);
    }
    return temperaturesInF;
    }
    