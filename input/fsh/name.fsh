Alias:   NameQualifier =  http://terminology.hl7.org/CodeSystem/v3-EntityNamePartQualifierR2

Extension: SEBaseMiddleNameExtension
Title: "SE extension för mellannamn"
Description: "The extension is used in the base profile for Swedish Patient to express the middle name that a person born before 2017 can have"
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
Description: "This profile provides the use of Swedish middlename and own famil name as extensions and is used in the base Patient profile"
* insert SEStandardRuleSet
* extension contains SEBaseMiddleNameExtension named middleName 0..1
* extension contains SEBaseOwnFamilyExtension named ownFamily 0..1
* given.extension contains http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier named nameQualifier 0..1
* given.extension[nameQualifier].valueCode from SEBaseNamePartQualifierVS (required)

ValueSet: SEBaseNamePartQualifierVS
Title: "SE ValueSet for preferred name"
Description: "This is the ValueSet for a code used on the name that is the preferred name. I.e, the name that the person would like to be called by"
* insert SEStandardRuleSet
* NameQualifier#CL "Call me"