use context dcic2024
# CLASS LECTURE
import lists as L

discount-codes = [list: "NEWYEAR", "student", "NONE", "student", "VIP", "none"]

# get the unique discount codes
unique-codes = L.distinct(discount-codes)

# keep only the valid codes (any codes that are not "none")
fun is-valid-code(code :: String) -> Boolean:
  doc: "determines whether code is valid (not none)"
  c = string-to-lower(code)
  not(c == "none")
where:
  is-valid-code("NEWYEAR") is true
  is-valid-code("student") is true
  is-valid-code("none") is false
  is-valid-code("NONE") is false
end

valid-codes = unique-codes.filter(is-valid-code)

# convert everything to lowercase
final-codes = valid-codes.map(string-to-lower)

# accessing data
# table-row-n()
fourth-item = discount-codes.get(3)

# filtering
# filter-with(table, fun(Row -> Boolean))

# option 1
# L.filter(fun(A -> Boolean), list))

# option 2 -- the one we're using today
# list.filter(fun(A-> Boolean))

# transforming
# transform-column(table, col name, fun(T -> T))
# list.map(fun(T -> T))

# counting
# how big is your table/list
# list.length()

# unique values
# count function for tables
# L.distinct(list)

# CLASS EXERCISE
# 1
upper-codes = valid-codes.map(string-to-upper)
#in this L.map case, "valid-code" is L

# 2
responses = [list: "yes", "NO", "maybe", "Yes", "no", "Maybe"]

lowercase-responses = responses.map(string-to-lower)
unique-responses = L.distinct(lowercase-responses)

definite-responses = unique-responses.filter(lam(r :: String) -> Boolean: (r == "yes") or (r == "no") end)

#3
products =
table: name :: String, price :: Number
  row: "laptop", 999.99
  row: "mouse", 25.50
  row: "keyboard", 75.00
  row: "monitor", 299.99
end
product-table=
  load-table: name, price
    source: products
  end

#5
# do NOT use if s == "Smith"; use function I don't remember which one

#6
#string-carat
