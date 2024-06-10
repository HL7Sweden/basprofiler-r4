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
    nationelltReservnummer 0..1
* identifier[personnummer].system = "http://electronichealth.se/identifier/personnummer" (exactly)
* identifier[samordningsnummer].system = "http://electronichealth.se/identifier/samordningsnummer" (exactly)
* identifier[nationelltReservnummer].system = "http://electronichealth.se/identifier/nationelltReservnummer" (exactly)
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
* identifier[personnummer].value = "195009072553"
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

Instance: PatientExample196101182803
InstanceOf: Patient
Usage: #example
* identifier
  * system = "http://electronichealth.se/identifier/personnummer"
  * value = "196101182803"
* name
  * use = #official
  * family = "Ljungberg"
  * given = "Maria Birgitta"
* gender = #female
* birthDate = "1961-01-18"
* address
  * line = "Vänervägen 7"
  * city = "VÄSTRA FRÖLUNDA"
  * postalCode = "42140"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M "Married"
* communication.language = urn:ietf:bcp:47#sv "Swedish"

Instance: PatientExample189002029800
InstanceOf: Patient
Usage: #example
* identifier
  * system = "http://electronichealth.se/identifier/personnummer"
  * value = "189002029800"
* name
  * use = #official
  * family = "Hammar"
  * given[0] = "Albertina"
  * given[+] = "VGR"
* gender = #female
* birthDate = "1890-02-02"
* address
  * line = "Haga Östergata"
  * city = "GÖTEBORG"
  * postalCode = "41301"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M "Married"
* communication.language = urn:ietf:bcp:47#sv "Swedish"

Instance: PatientExample200302022389
InstanceOf: Patient
Usage: #example
* identifier
  * system = "http://electronichealth.se/identifier/personnummer"
  * value = "200302022389"
* name
  * use = #official
  * family = "Hennig"
  * given = "Katja"
* gender = #female
* birthDate = "2003-02-02"
* address
  * line = "Södra vägen 5"
  * city = "Trollhättan"
  * postalCode = "46144"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#U "unmarried"
* communication.language = urn:ietf:bcp:47#sv "Swedish"

Instance: PatientExample199002222397
InstanceOf: Patient
Usage: #example
* identifier
  * system = "http://electronichealth.se/identifier/personnummer"
  * value = "199002222397"
* name
  * use = #official
  * family = "Ebers"
  * given = "Andreas"
* gender = #male
* birthDate = "1990-02-22"
* address
  * line[0] = "Rosenheimer"
  * line[+] = "Van Kampenstraat"
  * line[+] = "7558 Hengelo"
  * country = "Nederländerna"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#U "unmarried"
* communication.language = urn:ietf:bcp:47#sv "Swedish"

Instance: PatientExample196109732393
InstanceOf: Patient
Usage: #example
* identifier
  * system = "http://electronichealth.se/identifier/personnummer"
  * value = "196109732393"
* name
  * use = #official
  * family = "Smith"
  * given = "Tom"
* gender = #male
* birthDate = "1961-09-13"
* address
  * line = "SANDÅSGATAN 2"
  * city = "STOCKHOLM"
  * postalCode = "11327"
* contact
  * relationship = $SCT#127850001 "wife"
  * name
    * family = "T"
    * given[0] = "G"
    * given[+] = "L"
  * address
    * line[0] = "C"
    * line[+] = "B"
    * city = "E"
    * postalCode = "1"
  * telecom
    * system = #fax
    * value = "värde"
    * use = #mobile
    * rank = 1

Instance: PatientExample200001252386
InstanceOf: Patient
Usage: #example
* identifier
  * system = "http://electronichealth.se/identifier/personnummer"
  * value = "200001252386"
* name
  * use = #official
  * family = "Skyddad uppgift"
  * given = "Skyddad uppgift"
* gender = #female
* birthDate = "2000-01-25"
* address
  * line = "Förmedlingsuppdrag Box 2820"
  * city = "GÖTEBORG"
  * postalCode = "40320"

Instance: PatientExample189602029812
InstanceOf: Patient
Usage: #example
* identifier
  * system = "http://electronichealth.se/identifier/personnummer"
  * value = "189602029812"
* name
  * use = #official
  * family = "Skyddad uppgift"
  * given = "Skyddad uppgift"
* gender = #male
* birthDate = "1896-02-02"
* address
  * line = "Förmedlingsuppdrag Box 2820"
  * city = "GÖTEBORG"
  * postalCode = "40320"

Instance: PatientExample98240301AA06
InstanceOf: Patient
Usage: #example
* identifier
  * system = "http://electronichealth.se/identifier/personnummer"
  * value = "98240301AA06"
* name
  * use = #official
  * family = "Efternamn"
  * given[0] = "Förnamn"
  * given[+] = "Test mellannamn"
* gender = #female
* birthDate = "2024-03-01"
* address[0]
  * line[0] = "Adressrad 1"
  * line[+] = "Adressrad 2"
  * line[+] = "Adressrad 3"
  * country = "DZ"
* address[+]
  * line[0] = "Adressrad 1 (Mer än 35 tecken)"
  * line[+] = "Adressrad 2 (Färre än 35 tecken)"
  * city = "Orten"
  * postalCode = "54300"
* contact
  * relationship = $SCT#72705000 "Mother"
   // TODO: find or create an extension to add identifier to contact,
   // also need to satisfy pat-1: SHALL at least contain a contact's details or a reference to an organization
  // * identifier
   //   * system = "http://electronichealth.se/identifier/personnummer"
   //   * value = "97990110AA24"

Instance: PatientExample20210325K069
InstanceOf: Patient
Usage: #example
* identifier
  * system = "http://electronichealth.se/identifier/personnummer"
  * value = "20210325K069"
* name
  * use = #official
  * family = "Efternamn"
  * given[0] = "Förnamn"
  * given[+] = "Mellannamn"
* gender = #female
* birthDate = "2021-03-25"
* address
  * line = "Tillfällig adressrad"
  * city = "Trollhättan"
  * postalCode = "46141"
