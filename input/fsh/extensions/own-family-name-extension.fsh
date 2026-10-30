Extension: SEBaseOwnFamilyExtension
Title: "SE extension för explicit efternamn"
Description: "The extension is used in the base profile for Swedish Patient to explicity express which part of the name is used as the family name."
* ^status = #active
* ^experimental = false
* ^context[+].type = #element
* ^context[=].expression = "HumanName"
* value[x] only string
* value[x] 1..1