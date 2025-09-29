use context dcic2024
weather-data =
  table: date, temperature, precipitation
    row: "2025-01-01", 62, 0.1
    row: "2025-01-02", "45", 3
    row: "2025-01-03", 28, 0.2
    row: "2025-01-04", 55, -1
    row: "2025-01-05", 90, 0
  end

# STEP 1: Clean temperature column (convert strings to numbers)
#*no :: after v bc column can contain strings and numbers*

fun clean-temp(v) -> Number:
  doc: "convert either strings or numbers to numbers"
  if is-string(v):
    string-to-number(v).or-else(0)
  else:
    v
  end
  where:
  clean-temp(60) is 60
  clean-temp(96.4) is 96.4
  clean-temp("49") is 49
  end
  
clean-weather = transform-column(weather-data, "temperature", clean-temp)

# STEP 2: Create temperature categories/bins (dry is > 77, cold is < 60, and mild is 60 =< T =< 70

binned-weather = build-column(clean-weather, "temp-binned", lam(r :: Row) -> String:
    t = r["temperature"]
    if t > 77:
      "hot"
    else if t < 60:
      "cold"
    else:
      "mild"
    end
  end)
# binned-weather

# STEP 3: Create bar chart (temp categories on the x-axis)
freq-bar-chart(binned-weather, "temp-binned")


#CLASS EXERCISE
#Step 1: Clean up precipitation data (negatives are positive)
fun clean-precip(w) -> Number:
  doc: "changes any negative numbers to positive"
  if w < 0:
    w * -1
  else:
    w
  end
end

clean-precipitation = transform-column(binned-weather, "precipitation", clean-precip)
# clean-precipitation

#Step 2: Create temperature categories/bins (dry is = 0, drizzly is < 1, and wet is P >= 1, hella dry is < 0)
binned-precipitation = build-column(clean-precipitation, "precip-binned", lam(r :: Row) -> String:
    p = r["precipitation"]
    if p == 0:
      "dry"
    else if p < 1:
      "drizzly"
    else:
      "wet"
    end
  end)
binned-precipitation