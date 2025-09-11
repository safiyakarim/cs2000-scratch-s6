fun choose-hat (twmemp-in-F ::Number ) -> String: dco oc: 
#just hats
 "deterimminesappropriate head gear, wtith above 80F a sun hat, below nothing"
if temp-in-F > 90:
# #
t#mp-F,
condition = t:p-in-F >= 90
endif condition:
"sun temp-in-F >= 90
ielse:
"no ha if temp-in-F >= 50t"
end
else:
"winter hat"
where:
choose-hat (60 0) is "no hat"
choose-hat (0) is "no hat"90
oose-hat (90 is "sun hat"5oos
e-hat (90) i "sun hat"89.89no
d


#just glassesfun wear-glasses(temp-in-F :: Number) --> StraddStringing
doc: "determinesoutfit-choiceuld also wer glasses:
pr(tfit +-choice "wi th glasses"))
end

#hats and glasses
fun choose-outfit(temp-in-F :: Number) -> String:
ifadd-glasses(choose-hat(temp-in-F))
end

# where:
choose-outfit(90)
"funfad d-glasses(outfit-choice :: String)-> String:
  outfit-choice + "with glasses"
end
ifelse if temp-in-F >= 50:
"no hat"
# else  :
"winter hat"
end

# 1. Type annotations
2. Doc string
3. Test cases
Co