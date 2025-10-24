use context dcic2024

data NumList:
| nl-empty
| nl-link(first :: Number, rest :: NumList)
end

nl-link(1, nl-link(2, nl-link(3, n(empty))))

fun foo(nl :: NumList) -> ???:
  doc: ""
  cases (NumList) nl:
    | nl-empty => ...
    | nl-link(first, rest) =>
      ... first ...
      ... foo(rest) ...
  end
end
where:
num-7s(073) is 0 + num-7s(73)
num-7s(73) is 1 + num-7s(3)
num-7s(3) is 0
num-7s(nl-empty) is
end