use context dcic2024
import math as M
#1 - VARIABLES
# var my-var = value
# to update variable value: my-var := new-value

#2 - BLOCK
# specify multiple expressions

#3 - FOR LOOP
# repeated actions over a list:
# for each (___ from LIST):
# _______________
# end

# 4 - ?

# Pattern:
# var my-var = initial value
# for each (__ from LIST):
#   *logic*
#   my-var := __
# end
# my-var
# end by making above a "block"

fun my-sum(num-list :: List<Number>) -> Number block:
  doc: "computes sum of elements in list"
  #M.max(l)
  #M.sum(l)
  var total = 0
  for each(n from num-list):
    total := total + n
  end
  total
where:
  my-sum([list: 1, 3, 5]) is 9
  my-sum([list: 10, 0, -10, -20]) is -20
end

# CLASS EXERCISE
# 1
fun my-product(num-list :: List<Number>) -> Number block:
  doc: "computes product of elements in list"
  var product = 1
  for each(n from num-list):
    product := product * n
  end
  product
where:
  my-product([list: 1, 3, 5]) is 15
  my-product([list: 10, 0, -10, -20]) is 0
end

# 3
fun my-length(value-list :: List) -> Number block:
  doc: "takes a list of any value and returns the number of elements in the list"
  var elements = 0
  for each(n from value-list):
    elements := elements + 1
  end
  elements
where:
  my-length([list: 3, 5, 78]) is 3
  my-length([list: 0, "hello", 2, 88, -35]) is 5
end

# 5
fun all-short-words(string-list :: List<String>) -> Boolean block:
  doc: "takes a list of strings and returns true if every word has 4 or fewer characters, false otherwise"
  var all-true = true
  for each(s from string-list):
  if (string-length(s) > 4):
  all-true := false
  else:
  all-true := all-true
 end
 all-true
where:
    all-short-words([list: "hi", "red", "ten"]) is true
    all-short-words([list: "bye", "hello", "yes", "blue"]) is false
end
end