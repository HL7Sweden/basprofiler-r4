Alias:   SCT = http://snomed.info/sct|http://snomed.info/sct/45991000052106

ValueSet: SEBaseAddressPersonVS
Title: "SE ValueSet for official address types"
Description: "This is the ValueSet for address type in accordance with the swedish authorities"
* insert SEStandardRuleSet
* ^version = "0.1"
* SCT#63391000052104 "särskild postadress"
* SCT#63381000052101 "folkbokföringsadress"
* SCT#63401000052101 "utlandsadress"
* SCT#63411000052104 "uppgiven adress"
* SCT#64281000052109 "tillfällig postadress"
// från 500201000057102 | urval adresstyp |
// * codes from system http://snomed.info/sct|http://snomed.info/sct/45991000052106 where concept in SCT#64691000052109

Extension: SEBaseAddressPersonExtension
Title: "SE extension for official address types"
Description: "This extension defines the official ValueSet to be used when expressing address type in accordance with the swedish authorities"
* insert SEStandardRuleSet
* ^context[0].type = #element
* ^context[0].expression = "Address"
* value[x] only CodeableConcept
* valueCodeableConcept from SEBaseAddressPersonVS (required)
// alt. * valueCodeableConcept from http://snomed.info/sct/45991000052106/ValueSet?fhir_vs=refset/64691000052109 (required)

Profile: SEBasePatient
Parent: http://hl7.org/fhir/StructureDefinition/Patient
Title: "SE base profile for patient"
Description: "This is the base Patient profile to be used when profiling on Patient in a Swedish context"
* insert SEStandardRuleSet
* ^experimental = false
* ^version = "0.1"
* meta.security.code from SecurityLabelVS (extensible)
* address.extension contains SEBaseAddressPersonExtension named officialAddressType 0..1
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice for swedish patient identifier types"
* identifier contains 
    personnummer 0..1 and 
    samordningsnummer 0..1 and 
    nationelltReservnummer 0..1
* identifier[personnummer].system = "http://electronichealth.se/identifier/personnummer" (exactly)
* identifier[samordningsnummer].system = "http://electronichealth.se/identifier/samordningsnummer" (exactly)
* identifier[nationelltReservnummer].system = "http://electronichealth.se/identifier/nationelltReservnumer" (exactly)
//* name.extension contains 
//    SEBasisMiddleNameExtension named middleName 0..1 and
//    SEBasisOwnFamilyExtension named ownFamily 0..1
* name only SEBaseHumanName
* name 0..1

Instance: PatientExample1
InstanceOf: SEBasePatient
Description: "Patient example"
* meta.security[0] = ACTCODE#DEMO
* meta.security[1] = SecurityLabelCS#protected-information
* id = "PatientExample1"
* identifier[personnummer].value = "19121212-1212"
* name[0].use = #official
* name[0].family = "Goode Johansson"
* name[0].given[0] = "John"
* name[0].given[1] = "Bob"
* name[0].given[0].extension[nameQualifier].valueCode = #CL
* name[0].extension[middleName].valueString = "Johansson"
* name[0].extension[ownFamily].valueString = "Goode"
* name[0].text = "John Bob Goode Johansson"
* gender = #male
* birthDate = "1958-01-06"
* address.line = "2120 S Michigan Ave"
* address.city = "Chicago"
* address.postalCode = "60616"
* address.country = "US"
* address.extension[officialAddressType].valueCodeableConcept = SCT#63401000052101 "utlandsadress"
