use context dcic2024

fun apply-discounts(t :: Table) -> Table:
  doc: "transforms 'price' column by reducing 20%, if value is below 100"
  transform-column(t, "price", lam(price :: Number) -> Number: 
    if price < 100: price * 0.8 else: price end
  end)
where:
  test-table =
    table: price
      row: 50
      row: 120
      row: 80
      row: 40
    end
  apply-discounts(test-table) is
  table: price
    row: 50 * 0.8
    row: 120
    row: 80 * 0.8
    row: 40 * 0.8
  end
end

# CLASS EXCERSIZE
fun add-column(t :: Table) -> Table:
  doc: "adds a tax column, which is the sales tax amount"
  build-column(t, "tax", lam(price :: Number) -> Number: price * 0.05 end)
end

where:
price-table = table: price
  row: 50
  row: 60
  row: 49
  row: 28
  row: 470
  row: 124
end
apply taxes(add-column) is
table: price :: Number, tax :: Number
    