use context dcic2024
items = table: item :: String, x-coordinate :: Number, y-coordinate :: Number
    row: "Sword of Dawn",           23,  -87
    row: "Healing Potion",         -45,   12
    row: "Dragon Shield",           78,  -56
    row: "Magic Staff",             -9,   64
    row: "Elixir of Strength",      51,  -33
    row: "Cloak of Invisibility",  -66,    5
    row: "Ring of Fire",            38,  -92
    row: "Boots of Swiftness",     -17,   49
    row: "Amulet of Protection",    82,  -74
    row: "Orb of Wisdom",          -29,  -21
  end
items

fun calc-dist(r :: Row) -> Number:
doc: "calculate dastance usinig coordinates"
  num-sqrt(num-sqr(r["x-coordinate"]) + num-sqr(r["y-coordinate"]))
where:
  calc-dist(items.row-n(7)) is-roughly num-sqrt(num-sqr(-17) + num-sqr(49))
  calc-dist(items.row-n(3)) is-roughly num-sqrt(num-sqr(-9) + num-sqr(64))
end


fun sub-2(n :: Number) -> Number:
  doc: "subtracts 2"
  n - 2
where:
  sub-2(10) is 8
  sub-2(5) is 3
  sub-2(1) is -1
end

moved-items = transform-column(items, "x-coordinate", sub-2)

#CLASS EXCERSIZE
# first the function, then transform
fun scale-down(n :: Number) -> Number:
  doc: "scales number down by 10 percent each time"
  n * 0.9
where:
  scale-down(10) is 9
  scale-down(40) is 36
  scale-down(-15) is -13.5
end

table-1 = transform-column(items, "x-coordinate", scale-down)
transform-column(table-1, "y-coordinate", scale-down)
