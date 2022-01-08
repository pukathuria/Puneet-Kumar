
// Created by Puneet Kumar on 08/01/22.

func fizzProblem(number: Int) -> String {
    switch (number % 3 == 0, number % 5 == 0) {
    case (true, false):
        return "Fizz"
    case (false, true):
        return "Buzz"
    case (true, true):
        return "FizzBuzz"
    case (false, false):
        return String(number)
    }
}

print(fizzProblem(number: 15))
print(fizzProblem(number: 9))

