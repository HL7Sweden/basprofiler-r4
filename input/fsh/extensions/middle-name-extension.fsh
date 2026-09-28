Extension: SEBaseMiddleNameExtension
Title: "SE extension för mellannamn"
Description: "The extension is used in the base profile for Swedish Patient to express the middle name that a person born before 2017 can have"
* ^status = #active
* ^experimental = false
* ^context[+].type = #element
* ^context[=].expression = "HumanName"
* value[x] only string
* value[x] 1..1

