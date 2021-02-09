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
* identifier[hsaid].system = "http://electronichealth.se/identifier/hsaid"
* qualification ^slicing.discriminator.type = #value
* qualification ^slicing.discriminator.path = "code.system"
* qualification ^slicing.rules = #open
* qualification contains
    prescriber 0..1
* qualification[prescriber].code from SEBasePrescriberCodeTypeVS
* qualification[prescriber].identifier.system = "urn:oid:1.2.752.116.3.1.2"

Profile: SEBasePractitionerRole
Parent: http://hl7.org/fhir/StructureDefinition/PractitionerRole
Title: "SE base profil for practitioner role"
Description: "This is the base Practitioner Role profile to be used when profiling on Practitioner Role in a Swedish context"
* insert SEStandardRuleSet
