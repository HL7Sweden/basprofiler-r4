Alias:   SCT = http://snomed.info/sct|http://snomed.info/sct/45991000052106

ValueSet: SEBasisAddressPatVS
Title: "SE urval för officiella adresstyper"
Description: "Bla bla bla"
* insert SEStandardRuleSet
* SCT#63391000052104 "särskild postadress"
* SCT#63381000052101 "folkbokföringsadress"
* SCT#63401000052101 "utlandsadress"
* SCT#63411000052104 "uppgiven adress"
* SCT#64281000052109 "tillfällig postadress"
// från 500201000057102 | urval adresstyp |
// * codes from system http://snomed.info/sct|http://snomed.info/sct/45991000052106 where concept in SCT#64691000052109
Extension: SEBasisAddressPatExtension
Title: "SE extension för officiella adresstyper"
Description: "Bla bla bla"
* insert SEStandardRuleSet
* ^context[0].type = #element
* ^context[0].expression = "Address" // Patient.address??
* value[x] only CodeableConcept
* valueCodeableConcept from SEBasisAddressPatVS (required)
// alt. * valueCodeableConcept from http://snomed.info/sct/45991000052106/ValueSet?fhir_vs=refset/64691000052109 (required)

Profile: SEPatient
Parent: http://hl7.org/fhir/StructureDefinition/Patient
Title: "SE basprofil patient"
Description: "Bla bla bla"
* insert SEStandardRuleSet
* address.extension contains SEBasisAddressPatExtension named officialAddressType 1..1
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.description = "Slice for swedish patient identifier types"
<<<<<<< HEAD
* identifier contains personnummer 0..1 and samordningsnummer 0..1 and nationelltReservnummer 0..1
* identifier[personnummer].system = "http://electronichealth.se/identifier/personnummer"
* identifier[samordningsnummer].system = "http://electronichealth.se/identifier/samordningsnummer"
* identifier[nationelltReservnummer].system = "http://electronichealth.se/identifier/nationelltReservnumer"
* name only SEBasisHumanName 0..1

Extension: SEBasisMiddleNameExtension
Id: se-basis-middlename
Title: "SE extension för mellannamn"
Description: "Bla bla bla"
* value[x] only string

Extension: SEBasisOwnFamilyExtension
Id: se-basis-own-family
Title: "SE extension för explicit efternamn"
Description: "Bla bla bla"
* value[x] only string

Profile: SEBasisHumanName
Parent: http://hl7.org/fhir/StructureDefinition/HumanName
* extension contains SEBasisMiddleNameExtension named middleName 0..1
* extension contains SEBasisOwnFamilyExtension named ownFamily 0..1

=======
* identifier contains 
    personnummer 0..1 and 
    samordningsnummer 0..1 and 
    nationelltReservnummer 0..1
* identifier[personnummer].system = "http://electronichealth.se/identifier/personnummer"
* identifier[samordningsnummer].system = "http://electronichealth.se/identifier/samordningsnummer"
* identifier[nationelltReservnummer].system = "http://electronichealth.se/identifier/nationelltReservnumer"
>>>>>>> caa78066e3148bf35c052bf92cd8446e5f5df2f7

Instance: PatientExample1
InstanceOf: SEPatient
Description: "Patientexempel"
* id = "Patientexempel1"
* identifier[personnummer].value = "19121212-1212"
* name[0].use = #official
* name[0].family = "Goode"
* name[0].given[0] = "John"
* name[0].given[1] = "B."
* name[1].use = #usual
* name[1].given = "Johnny"
* gender = #male
* birthDate = "1958-01-06"
* address.line = "2120 S Michigan Ave"
* address.city = "Chicago"
* address.postalCode = "60616"
* address.country = "US"
* address.extension[officialAddressType].valueCodeableConcept = SCT#63401000052101 "utlandsadress"
