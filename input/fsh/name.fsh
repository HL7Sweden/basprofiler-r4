Alias:   NameQualifier =  http://terminology.hl7.org/CodeSystem/v3-EntityNamePartQualifierR2

Extension: SEBaseMiddleNameExtension
Title: "SE extension för mellannamn"
Description: "The extension is used in the base profile for Swedish Patient to express the middle name that a person born before 2017 can have a middlename"
* insert SEStandardRuleSet
* ^context[0].type = #element
* ^context[0].expression = "HumanName"
* value[x] only string
* value[x] 1..1

Extension: SEBaseOwnFamilyExtension
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
* given.extension contains http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier named nameQualifier 0..1
* given.extension[nameQualifier] only valueCode
* given.extension[nameQualifier].valueCode only SEBaseNamePartQualifierVS

ValueSet: SEBaseNamePartQualifierVS
Title: "SE ValueSet for preferred name"
Description: "This is the ValueSet for..."
* insert SEStandardRuleSet
* NameQualifier#CL "Call me"

Extension: SEBaseNameQualifier
Title: "SE ValueSet for preferred name"
Description: "This is the ValueSet for..."
* insert SEStandardRuleSet
* ^context[0].type = #element
* ^context[0].expression = "HumanName.given"
* extension contains  named middleName 0..1