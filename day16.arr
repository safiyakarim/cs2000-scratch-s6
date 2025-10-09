use context dcic2024

# CLASS  EXERCISE
# 1
fun my-doubles(num-list :: List<Number>) -> List<Number> block:
  doc: "takes a list of numbers and returns a new list where each element is twice what the corresponding element was"
  var newlist = [list:]
  for each(n from num-list):
    newlist := newlist + [list: n * 2]
  end
  newlist
where:
  my-doubles([list: 3, 50, -30]) is [list:6, 100, -60]
  my-doubles([list: 0, -1, 5]) is [list: 0, -2, 10]
end
# 2
# num-list.map(lam(n :: Number) -> Number: n * 2 end)

# 3
fun my-strings-lens(string-list :: List<String>) -> List<Number> block:
  doc: "takes a list of strings and returns a new list where each element is the length of the given string"
  var lengthlist = [list:]
  for each(w from string-list):
    lengthlist := lengthlist + [list: string-length(w)]
  end
  lengthlist
where:
  my-strings-lens([list: "hi", "bye"]) is [list:2, 3]
  my-strings-lens([list: "!", "pink", "hello"]) is [list: 1, 4, 5]
end
# 4
# string-list.map(string-length)

# 5
fun my-pos-nums(num-list :: List<Number>) -> List<Number> block:
  doc: "takes a list of numbers and returns a new list that contains only those numbers in the original list but positive"
  var mynumbers = [list:]
  for each(n from num-list):
    if n > 0:
      mynumbers := mynumbers + [list: n]
    else:
      mynumbers := mynumbers
  end
  end
  mynumbers
where:
  my-pos-nums([list: -12, 0, 7]) is [list: 7]
  my-pos-nums([list: 10, -1, 8]) is [list: 10, 8]
end

# 7
fun my-alternating(e :: List) -> List block:
  doc: "takes a list of any element and returns a new list that contains every other element"
  var 
  var 