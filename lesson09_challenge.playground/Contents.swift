struct TaxCalculator{
    private let tax:Double = 0.23
    
    func totalWithTax(subtotal:Double) -> Double {
        return subtotal * (1 + tax)
    }
}

struct BillSplitter{
    private let taxCalculator:TaxCalculator = TaxCalculator()
    
    func splitBy(subtotal:Double, numOfPeople:Int) -> Double{
        return taxCalculator.totalWithTax(subtotal: subtotal) / Double(numOfPeople)
    }
}

var billSplitter:BillSplitter = BillSplitter()

print(billSplitter.splitBy(subtotal: 120, numOfPeople: 5)) // => 29.52
