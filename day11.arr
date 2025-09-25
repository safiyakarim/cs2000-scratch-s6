use context dcic2024
include csv

voter-data =
  load-table: VoterID, FirstName, LastName, DOB, Party, Address, City, State, Zip, Phone, Email, LastVoted
    source: csv-table-file("day11voters.csv", default-options)
  end
# voter-data
      
fixed-party = transform-column(voter-data, "Party", lam(p :: String) -> String:
    if p == "":
      "Independent"
    else:
      p
    end
  end)
# fixed-party

fixed-LastName = transform-column(fixed-party, "LastName", lam(l :: String) -> String:
    if l == " Doe":
      "Doe"
    else:
      l
    end
  end)
# fixed-LastName

fixed-phone = transform-column(fixed-LastName, "Phone", lam(p :: String) -> String:
    replace1= string-replace(p,"-","")
    replace2= string-replace(replace1," ","")
    replace3= string-replace(replace2,"(","")
    replace4= string-replace(replace3,")","")
    replace5= string-replace(replace4,".","")
    replace5
  end)
# fixed-phone

fixed-DOB = transform-column(fixed-phone, "DOB", lam(d :: String) -> String:
    replace6= string-replace(d,"/","-")
    replace6
  end)
fixed-DOB
  