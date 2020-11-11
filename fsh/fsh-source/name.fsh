
Extension: SEBasisMiddleNameExtension
Id: se-basis-middlename
Title: "SE extension för mellannamn"
Description: "Bla bla bla"
* insert SEStandardRuleSet
* ^context[0].type = #element
* ^context[0].expression = "HumanName"
* value[x] only string
* value[x] 1..1

Extension: SEBasisOwnFamilyExtension
Id: se-basis-own-family
Title: "SE extension för explicit efternamn"
Description: "Bla bla bla"
* insert SEStandardRuleSet
* ^context[0].type = #element
* ^context[0].expression = "HumanName"
* value[x] only string
* value[x] 1..1

Profile: SEBasisHumanName
Parent: http://hl7.org/fhir/StructureDefinition/HumanName
* insert SEStandardRuleSet
* extension contains SEBasisMiddleNameExtension named middleName 0..1
* extension contains SEBasisOwnFamilyExtension named ownFamily 0..1