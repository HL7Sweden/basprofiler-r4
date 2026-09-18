
Profile: SEBasePractitionerRole
Parent: PractitionerRole
Title: "SE base profile for practitioner role"
Description: "This is the base Practitioner Role profile to be used when profiling on Practitioner Role in a Swedish context"
* ^status = #active
* ^experimental = false
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice for swedish practitioner role ID (Medarbetaruppdrag)"
* identifier contains hsaid 0..1
* identifier[hsaid].system = $hsaid
* identifier[hsaid].type = $v2-0203#PRN
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains sosnyk 0..1 and
    skr-yrke 0..1 and
    hsa-befattning 0..1
* code.coding[sosnyk] from SEBaseSOSNYKVS
* code.coding[skr-yrke] from SEBaseSKRYrkeVS
* code.coding[hsa-befattning] from SEBaseHSABefattningVS
* specialty.coding ^slicing.discriminator.type = #value
* specialty.coding ^slicing.discriminator.path = "system"
* specialty.coding ^slicing.rules = #open
* specialty.coding contains sosnyk 0..1 and
    skr-yrke 0..1
* specialty.coding[sosnyk] from SEBaseSOSNYKVS
//* specialty.coding[skr-yrke] from SEBaseSKRYrkeSpecialtyVS