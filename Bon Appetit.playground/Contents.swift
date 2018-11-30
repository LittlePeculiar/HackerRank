// Bon Appétit
func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
  let totalCost = bill.reduce(0, +)
  let actualCostOfAnna = ( totalCost - bill[k] ) / 2

  if b - actualCostOfAnna > 0 {
    print(b - actualCostOfAnna)
  } else {
    print("Bon Appetit")
  }
}
