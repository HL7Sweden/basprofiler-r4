CodeSystem: SEBasePrescriberCodeTypeCS
* insert SEStandardRuleSet
* #prescriber-code "Prescriber code"
* #group-prescriber-code "Group prescriber code"

ValueSet: SEBasePrescriberCodeTypeVS
* insert SEStandardRuleSet
* include codes from system SEBasePrescriberCodeTypeCS

Profile: SEBasePractitioner
Parent: http://hl7.org/fhir/StructureDefinition/Practitioner
Title: "SE base profil for practitioner"
Description: "This is the base Practitioner profile to be used when profiling on Practitioner in a Swedish context"
* insert SEStandardRuleSet
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice for swedish practitioner ID"
* identifier contains 
    hsaid 1..1
* identifier[hsaid].system = "urn:oid:1.2.752.29.6.2.1" (exactly)
* identifier[hsaid].type = http://terminology.hl7.org/CodeSystem/v2-0203#PRN (exactly)

* name only SEBaseHumanName
* name 0..1

* qualification ^slicing.discriminator.type = #value
* qualification ^slicing.discriminator.path = "code.system"
* qualification ^slicing.rules = #open
* qualification contains
    prescriber 0..1
* qualification[prescriber].code from SEBasePrescriberCodeTypeVS
* qualification[prescriber].identifier 1..1
* qualification[prescriber].identifier ^slicing.discriminator.type = #value
* qualification[prescriber].identifier ^slicing.discriminator.path = "system"
* qualification[prescriber].identifier ^slicing.rules = #closed
* qualification[prescriber].identifier contains
    prescriberCode 1..1
* qualification[prescriber].identifier[prescriberCode].system = "urn:oid:1.2.752.116.3.1.2" (exactly)

Profile: SEBasePractitionerRole
Parent: http://hl7.org/fhir/StructureDefinition/PractitionerRole
Title: "SE base profil for practitioner role"
Description: "This is the base Practitioner Role profile to be used when profiling on Practitioner Role in a Swedish context"
* insert SEStandardRuleSet

Instance: PractitionerExample1
InstanceOf: SEBasePractitioner
Description: "Practitioner example"
* id = "PractitionerExample1"
* name[0].use = #official
* name[0].family = "Goode Johansson"
* name[0].given[0] = "John"
* name[0].given[1] = "Bob"
* name[0].extension[middleName].valueString = "Johansson"
* name[0].extension[ownFamily].valueString = "Goode"
* name[0].text = "John Bob Goode Johansson"
* name[0].given[1].extension[nameQualifier].valueCode = #CL
* identifier[hsaid].value = "SE2321000131-P000000123456"
* qualification[prescriber].code = #group-prescriber-code
* qualification[prescriber].identifier[prescriberCode].value = "9000001"