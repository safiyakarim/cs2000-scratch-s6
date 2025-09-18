use context dcic2024
# LECTURE
orders = table: time :: String, amount :: Number
  row: "08:00", 10.50
  row: "09:30", 5.75
  row: "10:15", 8.00
  row: "11:00", 3.95
  row: "14:00", 4.95
  row: "16.45", 7.95
end

high-value-orders = table: time, amount
  row: "08:00", 10.50
  row: "10:15", 8.00
end

# high-value orders (amount >= 8)
fun is-high-value(r :: Row) -> Boolean:
  doc: "determines if row has amount of >= 8"
  r["amount"] >= 8
# square brackets when you want to access a column in your row
where:
  is-high-value(orders.row-n(0)) is true
  is-high-value(orders.row-n(1)) is false
  is-high-value(orders.row-n(2)) is true
end

filter-with(orders, is-high-value)
order-by(orders, "amount", true)

# check clause (instead of "where" in function)
check:
  filter-with(orders, is-high-value) is high-value-orders
end

# CLASS EXCERCISE
#1
fun is-morning(r :: Row) -> Boolean:
  doc: "determines if the time is morning"
  r["time"] <= "11:59"
where:
  is-morning(orders.row-n(0)) is true
  is-morning(orders.row-n(1)) is true
  is-morning(orders.row-n(4)) is false
end
morning-orders = filter-with(orders, is-morning)

#2
order-by(orders, "time", false)
# t.row-n(0)["amount"]