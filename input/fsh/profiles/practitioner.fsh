// ValueSet: SEBaseSKRYrkeSpecialtyVS
// Title: "SKR ValueSet for clinical specialties"
// Description: "SKR ValueSet for clinical specialties"
// * ^status = #active
// * ^experimental = false
// * include codes from system $SCT where concept in $SCT#67051000052103 // | urval specialistyrken sjuksköterska |
// * include codes from system $SCT where concept in $SCT#67081000052106 // | urval specialistyrken läkare |
// * include codes from system $SCT where concept in $SCT#67071000052109 // | urval specialistyrken tandläkare |





Profile: SEBasePractitioner
Parent: Practitioner
Title: "SE base profile for practitioner"
Description: "This is the base Practitioner profile to be used when profiling on Practitioner in a Swedish context"
* ^status = #active
* ^experimental = false
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice for swedish practitioner ID"
* identifier contains hsaid 0..1
* identifier[hsaid].system = $hsaid
* identifier[hsaid].type = $v2-0203#PRN

* name only SEBaseHumanName
* name 0..1

* address.extension contains SEBaseAddressPersonExtension named officialAddressType 0..1

* qualification.identifier ^slicing.discriminator.type = #value
* qualification.identifier ^slicing.discriminator.path = "system"
* qualification.identifier ^slicing.rules = #open
* qualification.identifier contains prescriber 0..1 and legitimation 0..1
* qualification.identifier[prescriber].system = $prescriber
* qualification.identifier[legitimation].system = $legitimation

* qualification.code.coding ^slicing.discriminator.type = #value
* qualification.code.coding ^slicing.discriminator.path = "system"
* qualification.code.coding ^slicing.rules = #open
* qualification.code.coding contains hosp 0..1 and
    sosnyk 0..1 and
    skr-yrke 0..1 and
    hsa-befattning 0..1
* qualification.code.coding[hosp].code from SEBaseHOSPLegitimationsYrkeVS (required)
* qualification.code.coding[hosp].system = $occupations
* qualification.code.coding[sosnyk].code from SEBaseSOSNYKVS (required)
* qualification.code.coding[sosnyk].system = $professional-categories
* qualification.code.coding[skr-yrke].code from SEBaseSKRYrkeVS (extensible)
* qualification.code.coding[skr-yrke].system = $SCT-versionless
* qualification.code.coding[hsa-befattning] from SEBaseHSABefattningVS (required)
* qualification.code.coding[hsa-befattning].system = $occupational-positions




