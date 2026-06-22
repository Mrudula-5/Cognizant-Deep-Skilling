package Exercise7_FinancialForecasting;

public class TestForecast {

    public static void main(String[] args) {

        double currentValue = 10000;
        double growthRate = 0.10;   //10%
        int years = 5;

        double future =
                FinancialForecast.futureValue(currentValue, growthRate, years);

        System.out.println("Current Value : " + currentValue);
        System.out.println("Growth Rate   : " + (growthRate * 100) + "%");
        System.out.println("Years         : " + years);
        System.out.println("Future Value  : " + future);
    }
}
