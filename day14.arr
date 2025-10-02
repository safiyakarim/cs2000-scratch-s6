use context dcic2024
#SKILL DAY

include csv
url = "https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/support/7-photos.csv"

#LOAD TABLE FROM DATA URL
given-data=
  load-table: Location, Subject, Date
    source: csv-table-url(url,default-options)
  end

#COUNT HOW MANY SUBJECTS ARE CAPTURED IN THIS ALBUM
subject-count = count(given-data, "Subject")
value-count = count(subject-count, "value")
subject-sum = sum(value-count, "count")
subject-sum