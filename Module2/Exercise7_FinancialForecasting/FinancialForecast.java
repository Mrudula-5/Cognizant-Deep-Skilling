package Exercise7_FinancialForecasting;

public class FinancialForecast {

    // Recursive method
    public static double futureValue(double currentValue, double growthRate, int years) {

        // Base Case
        if (years == 0) {
            return currentValue;
        }

        // Recursive Call
        return futureValue(currentValue, growthRate, years - 1) * (1 + growthRate);
    }
}