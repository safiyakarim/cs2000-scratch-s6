use context dcic2024
fun add-till-zero(l :: list<Number>) -> Number:
  doc: "adds the numbers in the list until we hit a 0"
  cases (List) l:
    | empty => 0
    | link(f, r) =>
      if f == 0: 0
      else: f + add-till-zero(r)
      end
  end
where:
  add-till-zero([list: 5, 7, 0, 3]) is [list: 5, 7, 0, 3].first + add-till-zero([list: 5, 7, 0, 3].rest)
  add-till-zero([list: 7, 0, 3]) is 7 + add-till-zero([list: 0, 3])
  add-till-zero([list: 0, 3]) is 0
  add-till-zero([list: ]) is 0
  # break down your left hand side to create more test 
  # cases
  
  # rewrite the right hand side of the test case using
  # recursion
end
    
# CLASS EXERCISE
# 2
fun strings-less-than(l :: list<String>) -> list<String>:
  doc: "filters strings that are more than the limit"
where:
  strings-less-than([list: "cat", "hello", "world", "fork"]) is link("cat", strings-less-than([list: "hello", "world", "fork"]))
  
  strings-less-than([list: "hello", "world", "fork"]) is [list: "fork"]
  
  strings-less-than([list: "world", "fork"]) is [list: "fork"]
  
  strings-less-than([list: "fork"]) is link("fork", strings-less-than([list: ]))
  
  strings-less-than([list: ]) is empty|
  