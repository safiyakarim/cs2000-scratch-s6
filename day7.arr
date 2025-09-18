use context dcic2024
include csv
include data-source

workouts = table: date :: String, workout :: String, duration :: Number, had-protien :: Boolean
  row: "Sep 15", "Gym", 60, true
  row: "Sep 16", "Bike", 45, false
  row: "Sep 17", "Walk", 10, true
end

recipes = load-table: title :: String, servings :: Number, prep-time :: Number
  source: csv-table-url("https://pdi.run/f25-2000-recipes.csv", default-options)
  sanitize servings using num-sanitizer
  sanitize prep-time using num-sanitizer
end

homicides = load-table: Count-of-Victims :: Number, Age-Group :: String, Sex :: String, Method-of-Killing :: String, Domestic-Abuse :: Number, Recorded-Date :: String, Homicide-Offence-Type :: String, Solved-Status :: String, Borough :: String, Officer-Observed-Ethnicity :: String
  source: csv-table-url("https://data.london.gov.uk/download/baaaea11-6c41-4795-aa26-f2b35c8e56ea/b3s/Homicide%20Victims%202003%20-%20Jun%202025.csv", default-options)
  sanitize Count-of-Victims using num-sanitizer
  sanitize Domestic-Abuse using num-sanitizer
end

homicides


fun square-area(n :: Number) -> Number:
  doc: "returns area measurments based off inputted measurment"
  if n <= 0:
    "error"
  else:
  n * n
  end
where:
  square-area(10) is 20
  
end