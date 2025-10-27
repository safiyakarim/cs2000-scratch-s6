use context dcic2024

data River:
  | stream(flow-rate :: Number)
  | merge(width :: Number, left :: River, right :: River)
end

a = stream(3)
b = stream(4)
c = stream(5)

m-1 = merge(10, a, b)
main-river = merge(7, m-1, c)

fun total-flow(r :: River) -> Number:
  doc: ""
  cases (River) r:
    | stream(fr) => fr
    | merge(width, left, right) => total-flow(left) + total-flow(right)
  end
where:
  total-flow(m-1) is total-flow(a) + total-flow(b)
  total-flow(a) is 3
  total-flow(b) is 4
end

#EXERCISE 1
fun count-streams(r :: River) -> Number:
  doc: "counts how many individual streams feed into a river network"
  cases (River) r:
    | stream(fr) => 1
    | merge(width, left, right) => count-streams(left) + count-streams(right)
  end
where:
  count-streams(m-1) is 2
  count-streams(main-river) is 3
  count-streams(a) is 1
end

#EXERCISE 2
fun max-width(r :: River) -> Number:
  doc: "finds the maximum width among all merge points in a river network"
  cases (River) r:
    | stream(fr) => 0
    | merge(width, left, right) => num-max(width, num-max(max-width(left), max-width(right)))
  end
where:
  max-width(main-river) is 10
  max-width(b) is 0
end

#EXERCISE 3 - incomplete
fun widen-river(r :: River) -> Number:
  doc: "takes a river network and a number, and returns a new network where every merge point is wider by that amount"
  cases (River) r:
# #     | stream(fr) => 0
# #     | merge(width, left, right) => widen-river(l
  end
where:
#   max-width(main-river) is 10
#   max-width(b) is 0
end