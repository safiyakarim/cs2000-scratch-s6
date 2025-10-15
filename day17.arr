use context dcic2024

var cnt = 0
fun every-third-element(lst :: List) -> List block:
  var output = [list: ]
  spy: cnt, output end
  for each(elt from lst) block:
    when num-modulo(cnt, 3) == 0:
      output := output + [list: elt]
    end
    cnt := cnt + 1
  end
  output
where:
  every-third-element([list: ]) is [list: ]
  every-third-element([list: 1, 3, 5]) is [list: 1]
  every-third-element([list: 1,3,5,7,11]) is [list: 1, 7]
end