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
    personnummer 0..* and
    samordningsnummer 0..* and
    nationelltReservnummer 0..*
* obeys se-base-patient-1
* identifier[personnummer].system = $personnummer
* identifier[personnummer] ^comment = "A personnummer can change, for example after a change of legal gender or a corrected date of birth. Earlier numbers are kept with use = old, and at most one personnummer can be current (see se-base-patient-1)."
* identifier[samordningsnummer].system = $samordningsnummer
* identifier[samordningsnummer] ^comment = "Earlier samordningsnummer are kept with use = old, and at most one samordningsnummer can be current (see se-base-patient-1)."
* identifier[nationelltReservnummer].system = $nationelltReservnummer
* identifier[nationelltReservnummer] ^comment = "Earlier nationella reservnummer are kept with use = old, and at most one nationellt reservnummer can be current (see se-base-patient-1)."
//* name.extension contains
//    SEBasisMiddleNameExtension named middleName 0..1 and
//    SEBasisOwnFamilyExtension named ownFamily 0..1
* name only SEBaseHumanName
* name ^comment = "The name registered in the national population register (folkbokföringen) uses use = official, with its tilltalsnamn marked by the CL qualifier on the given name. Other names sit next to it as separate HumanNames, for example a preferred name that is not one of the registered given names (use = usual or nickname) or an earlier name (use = old or maiden)."
* maritalStatus from SEBaseMaritalStatusVS (extensible)

Invariant: se-base-patient-1
Description: "At most one personnummer, samordningsnummer and nationellt reservnummer each can be current. Earlier ones must have use = old."
Severity: #error
Expression: "identifier.where(system = 'http://electronichealth.se/identifier/personnummer' and (use.empty() or use != 'old')).count() <= 1 and identifier.where(system = 'http://electronichealth.se/identifier/samordningsnummer' and (use.empty() or use != 'old')).count() <= 1 and identifier.where(system = 'http://electronichealth.se/identifier/nationelltReservnummer' and (use.empty() or use != 'old')).count() <= 1"

