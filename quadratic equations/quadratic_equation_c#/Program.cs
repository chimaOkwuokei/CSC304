internal class Program
{
    private static void Main(string[] args)
    {
        // Console.WriteLine("Hello, World!");
        int a = 1;
        int b = 3;
        int c = 4;
        double x1, x2;

        int d = (b * b) - (4 * a * c);
        Console.WriteLine(d);

        if (d > 0)
        {
            x1 = (-b + Math.Sqrt(d)) / (2 * a);
            x2 = (-b - Math.Sqrt(d)) / (2 * a);
            Console.WriteLine($"The discriminant is (positive) {d}");
            // Console.WriteLine($"The value of d is {d}");
            Console.WriteLine($"The values of x1 and x2 are {x1} is {x2}");
            
        }
        else if(d < 0){
            double realPart = -b / (2 * a);
            double imaginaryPart = Math.Sqrt(Math.Abs(d)) / (2 * a);

            Console.WriteLine($"The discriminant is (negative): {d}");
            Console.WriteLine("The complex roots are:");
            Console.WriteLine($"x1 = {realPart} + {imaginaryPart}i");
            Console.WriteLine($"x2 = {realPart} - {imaginaryPart}i");
        }
        else if(d == 0){
            x1 = (-b + Math.Sqrt(d)) / (2 * a);
            x2 = (-b - Math.Sqrt(d)) / (2 * a);
            Console.WriteLine($"The discriminant is (0) {d}");
            // Console.WriteLine($"The value of d is {d}");
            Console.WriteLine($"The values of x1 and x2 are {x1} is {x2}");
            
        }
    }
}