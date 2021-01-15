
Extension: SEBaseMiddleNameExtension
Id: se-base-middlename
Title: "SE extension för mellannamn"
Description: "The extension is used in the base profile for Swedish Patient to express the middle name that a person born before 2017 can have a middlename"
* insert SEStandardRuleSet
* ^context[0].type = #element
* ^context[0].expression = "HumanName"
* value[x] only string
* value[x] 1..1

Extension: SEBaseOwnFamilyExtension
Id: se-base-own-family
Title: "SE extension för explicit efternamn"
Description: "The extension is used in the base profile for Swedish Patient to explicity express which part of the name is used as the family name."
* insert SEStandardRuleSet
* ^context[0].type = #element
* ^context[0].expression = "HumanName"
* value[x] only string
* value[x] 1..1

Profile: SEBaseHumanName
Parent: http://hl7.org/fhir/StructureDefinition/HumanName
Description: "This profile provides the use of Swedish middlename as extensions and is used in the base Patient profile"
* insert SEStandardRuleSet
* extension contains SEBaseMiddleNameExtension named middleName 0..1
* extension contains SEBaseOwnFamilyExtension named ownFamily 0..1