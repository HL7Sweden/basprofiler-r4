Profile: SEBasePatient
Parent: Patient
Title: "SE base profil for patient"
Description: "This is the base Patient profile to be used when profiling on Patient in a Swedish context"
* ^status = #active
* ^experimental = false
// * ^version = "0.1"
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
* identifier[personnummer].system = $personnummer
* identifier[samordningsnummer].system = $samordningsnummer
* identifier[nationelltReservnummer].system = $nationelltReservnummer
//* name.extension contains
//    SEBasisMiddleNameExtension named middleName 0..1 and
//    SEBasisOwnFamilyExtension named ownFamily 0..1
* name only SEBaseHumanName
* name 0..1
* maritalStatus from SEBaseMaritalStatusVS (extensible)

