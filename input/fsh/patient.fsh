Alias:   $SCT = http://snomed.info/sct|http://snomed.info/sct/45991000052106

CodeSystem: SEBaseMaritalStatusCS
Id: se-base-marital-status
Title: "SE CodeSystem for marital status"
Description: "This is the CodeSystem for marital status in accordance with the Swedish authorities (Skatteverket Navet)"
* ^status = #active
* ^experimental = false
* insert SEStandardRuleSet
* #G "Gift" 
* #OG "Ogift"
* #S "Skild"
* #Ä "Änka/änkling"
* #RP "Registrerad partner"
* #SP "Skild partner"
* #EP "Efterlevande partner"


ValueSet: SEBaseMaritalStatusVS
Title: "SE ValueSet for marital status"
Description: "This is a value set of marital status types that include both the HL7 official codesystem and the ones specific from the Swedish authorities."
* ^status = #active
* ^experimental = false
* insert SEStandardRuleSet
* http://hl7.org/fhir/ValueSet/marital-status#M "Married"
* http://hl7.org/fhir/ValueSet/marital-status#D "Divorced"
* http://hl7.org/fhir/ValueSet/marital-status#W "Widowed"
* http://hl7.org/fhir/ValueSet/marital-status#U "unmarried"
* SEBaseMaritalStatusCS#RP "Registrerad partner"
* SEBaseMaritalStatusCS#SP "Skild partner"
* SEBaseMaritalStatusCS#EP "Efterlevande partner"

ValueSet: SEBaseAddressPersonVS
Title: "SE ValueSet for official address types"
Description: "This is the ValueSet for address type in accordance with the Swedish authorities"
* ^status = #active
* ^experimental = false
* insert SEStandardRuleSet
* ^version = "0.1"
* $SCT#63391000052104 "särskild postadress"
* $SCT#63381000052101 "folkbokföringsadress"
* $SCT#63401000052101 "utlandsadress"
* $SCT#63411000052104 "uppgiven adress"
// * SCT#64281000052109 "tillfällig postadress"
// från 500201000057102 | urval adresstyp |
// * codes from system http://snomed.info/sct|http://snomed.info/sct/45991000052106 where concept in SCT#64691000052109

Extension: SEBaseAddressPersonExtension
Title: "SE extension for official address types"
Description: "This extension defines the official ValueSet to be used when expressing address type in accordance with the Swedish authorities"
* ^status = #active
* ^experimental = false
* insert SEStandardRuleSet
* ^context[0].type = #element
* ^context[0].expression = "Address"
* value[x] only CodeableConcept
* valueCodeableConcept from SEBaseAddressPersonVS (required)
// alt. * valueCodeableConcept from http://snomed.info/sct/45991000052106/ValueSet?fhir_vs=refset/64691000052109 (required)

Profile: SEBasePatient
Parent: http://hl7.org/fhir/StructureDefinition/Patient
Title: "SE base profil for patient"
Description: "This is the base Patient profile to be used when profiling on Patient in a Swedish context"
* ^status = #active
* ^experimental = false
* insert SEStandardRuleSet
* ^experimental = false
* ^version = "0.1"
* meta.security.code from SecurityLabelVS (extensible)
* address.extension contains SEBaseAddressPersonExtension named officialAddressType 0..1
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice for Swedish patient identifier types"
* identifier contains 
    personnummer 0..1 and 
    samordningsnummer 0..1 and 
    nationelltReservnummer 0..1 and
    SLL_local_reservnummer 0..1 and
    VGR_local_reservnummer 0..1 and
    LiV_local_reservnummer 0..1 and
    IneraCareLink_local_reservnummer 0..1 and
    Orebro_local_reservnummer 0..1 and
    Skane_local_reservnummer 0..1 and
    Blekinge_local_reservnummer 0..1 and
    Vasternorrland_local_reservnummer 0..1 and
    Sormland1_local_reservnummer 0..1 and
    Sormland2_local_reservnummer 0..1

* identifier[personnummer].system = "http://electronichealth.se/identifier/personnummer" (exactly)
* identifier[samordningsnummer].system = "http://electronichealth.se/identifier/samordningsnummer" (exactly)
* identifier[nationelltReservnummer].system = "http://electronichealth.se/identifier/nationelltReservnummer" (exactly)
* identifier[SLL_local_reservnummer].system = "urn:oid:1.2.752.97.3.1.3"
* identifier[VGR_local_reservnummer].system = "urn:oid:1.2.752.113.11.0.2.1.1.1"
* identifier[LiV_local_reservnummer].system = "urn:oid:1.2.752.74.9.2"
* identifier[IneraCareLink_local_reservnummer].system = "urn:oid:1.2.752.129.2.1.3.2"
* identifier[Orebro_local_reservnummer].system = "urn:oid:1.2.752.74.9.3"
* identifier[Skane_local_reservnummer].system = "urn:oid:1.2.752.219.1.10.10.1"
* identifier[Blekinge_local_reservnummer].system = "urn:oid:1.2.752.74.9.5"
* identifier[Vasternorrland_local_reservnummer].system = "urn:oid:1.2.752.269.1.1"
* identifier[Sormland1_local_reservnummer].system = "urn:oid:1.2.752.266.1.1.1"
* identifier[Sormland2_local_reservnummer].system = "urn:oid:1.2.752.266.1.1.2"

* identifier[personnummer].value obeys personnummer-invariant
* identifier[personnummer].value ^example.label = "General"
* identifier[personnummer].value ^example.valueString = "191212121212"
* identifier[samordningsnummer].value obeys samordningsnummer-invariant
* identifier[samordningsnummer].value ^example.label = "General"
* identifier[samordningsnummer].value ^example.valueString = "197010632391"
* identifier[nationelltReservnummer].value obeys nationelltReservnummer-invariant
* identifier[nationelltReservnummer].value ^example.label = "General"
* identifier[nationelltReservnummer].value ^example.valueString = "22950606-FH20"
* identifier[SLL_local_reservnummer].value obeys SLL-local-reservnummer-invariant
* identifier[SLL_local_reservnummer].value ^example.label = "General"
* identifier[SLL_local_reservnummer].value ^example.valueString = "991981000010"
* identifier[VGR_local_reservnummer].value obeys VGR-local-reservnummer-invariant
* identifier[VGR_local_reservnummer].value ^example.label = "General"
* identifier[VGR_local_reservnummer].value ^example.valueString = "19810829M071"
* identifier[LiV_local_reservnummer].value obeys LiV-local-reservnummer-invariant
* identifier[LiV_local_reservnummer].value ^example.label = "General"
* identifier[LiV_local_reservnummer].value ^example.valueString = "19810829SU3A"
* identifier[IneraCareLink_local_reservnummer].value obeys IneraCareLink-local-reservnummer-invariant
* identifier[IneraCareLink_local_reservnummer].value ^example.label = "General"
* identifier[IneraCareLink_local_reservnummer].value ^example.valueString = "198108320014"
* identifier[Orebro_local_reservnummer].value obeys Orebro-local-reservnummer-invariant
* identifier[Orebro_local_reservnummer].value ^example.label = "General"
* identifier[Orebro_local_reservnummer].value ^example.valueString = "19810829TB1F"
* identifier[Skane_local_reservnummer].value obeys Skane-local-reservnummer-invariant
* identifier[Skane_local_reservnummer].value ^example.label = "General"
* identifier[Skane_local_reservnummer].value ^example.valueString = "810829DA1B"
* identifier[Blekinge_local_reservnummer].value obeys Blekinge-local-reservnummer-invariant
* identifier[Blekinge_local_reservnummer].value ^example.label = "General"
* identifier[Blekinge_local_reservnummer].value ^example.valueString = "20200501-AA8A"
* identifier[Vasternorrland_local_reservnummer].value obeys Vasternorrland-local-reservnummer-invariant
* identifier[Vasternorrland_local_reservnummer].value ^example.label = "General"
* identifier[Vasternorrland_local_reservnummer].value ^example.valueString = "20100101014R"
* identifier[Sormland1_local_reservnummer].value obeys Sormland1-local-reservnummer-invariant
* identifier[Sormland1_local_reservnummer].value ^example.label = "General"
* identifier[Sormland1_local_reservnummer].value ^example.valueString = "19600606AA1G"
* identifier[Sormland2_local_reservnummer].value obeys Sormland2-local-reservnummer-invariant
* identifier[Sormland2_local_reservnummer].value ^example.label = "General"
* identifier[Sormland2_local_reservnummer].value ^example.valueString = "18500101N123"

//* name.extension contains 
//    SEBasisMiddleNameExtension named middleName 0..1 and
//    SEBasisOwnFamilyExtension named ownFamily 0..1
* name only SEBaseHumanName
* name 0..1
* maritalStatus from SEBaseMaritalStatusVS (extensible)

Instance: PatientExample1
InstanceOf: SEBasePatient
Description: "Patient example"
* meta.security[0] = $ACTCODE#DEMO
* meta.security[1] = SecurityLabelCS#sekretessmarkering
* id = "PatientExample1"
* identifier[personnummer].value = "19500907-2553"
* name[0].use = #official
* name[0].family = "Goode Johansson"
* name[0].given[0] = "John"
* name[0].given[1] = "Bob"
* name[0].given[0].extension[nameQualifier].valueCode = #CL
* name[0].extension[middleName].valueString = "Johansson"
* name[0].extension[ownFamily].valueString = "Goode"
* name[0].text = "John Bob Goode Johansson"
* gender = #male
* maritalStatus = #RP "Registrerad partner"
* birthDate = "1950-09-07"
* address.line = "2120 S Michigan Ave"
* address.city = "Chicago"
* address.postalCode = "60616"
* address.country = "US"
* address.extension[officialAddressType].valueCodeableConcept = $SCT#63401000052101 "utlandsadress"
