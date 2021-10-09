// Challenge 1
func goodMorning(){
    print("Good Morning")
}

goodMorning()

// Challenge 2
func printTotalWithTax(subtotal:Double){
    print(subtotal * 1.13)
}

printTotalWithTax(subtotal: 241)

// Challenge 3
func getTotalWithTax(subtotal:Double) -> Double {
    return subtotal * 1.13;
}

print(getTotalWithTax(subtotal: 256))

// Challenge 4
func calculateTotalWithTax(subtotal:Double, tax:Double) -> Double {
    return subtotal * (1.0 + tax)
}

print(calculateTotalWithTax(subtotal: 256, tax: 0.23))
