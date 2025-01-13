/*CodeSystem: SEBasePrescriberCodeTypeCS
* #prescriber-code "Prescriber code"
* #group-prescriber-code "Group prescriber code"

ValueSet: SEBasePrescriberCodeTypeVS
* include codes from system SEBasePrescriberCodeTypeCS
*/
ValueSet: SEBaseHOSPLegitimationsYrkeVS
Title: "ValueSet for certification occupation from HOSP"
Description: "Certified occupations as listed in the Register of Authorised Healthcare Professionals (HOSP)"
* ^status = #active
* ^experimental = false
* include codes from system urn:oid:1.2.752.116.3.1.3

ValueSet: SEBaseSOSNYKVS
Title: "ValueSet for occupation codes from the National Board of Health and Welfare (SOSNYK)"
Description: "The code system for professional categories is developed to be used in digital documentation, for reporting to registers, etc."
* ^status = #active
* ^experimental = false
* include codes from system urn:oid:1.2.752.116.1.3.6

ValueSet: SEBaseSKRYrkeVS
Title: "SKR ValueSet for occupations"
Description: "SKR ValueSet for occupations"
* ^status = #active
* ^experimental = false
* include codes from system http://snomed.info/sct|http://snomed.info/sct/45991000052106 where concept in $SCT#67031000052107 // | urval legitimerade yrken |
* include codes from system http://snomed.info/sct|http://snomed.info/sct/45991000052106 where concept in $SCT#68591000052102 // | urval ej legitimerade yrken |

ValueSet: SEBaseSKRYrkeSpecialtyVS
Title: "SKR ValueSet for clinical specialties"
Description: "SKR ValueSet for clinical specialties"
* ^status = #active
* ^experimental = false
* include codes from system http://snomed.info/sct|http://snomed.info/sct/45991000052106 where concept in $SCT#67051000052103 // | urval specialistyrken sjuksköterska |
* include codes from system http://snomed.info/sct|http://snomed.info/sct/45991000052106 where concept in $SCT#67081000052106 // | urval specialistyrken läkare |
* include codes from system http://snomed.info/sct|http://snomed.info/sct/45991000052106 where concept in $SCT#67071000052109 // | urval specialistyrken tandläkare |

ValueSet: SEBaseHSABefattningVS
Title: "Valueset for HSA occupational positions in healthcare"
Description: "The code system is used in the data element 'paTitleCode' in the HSA catalogue"
* ^status = #active
* ^experimental = false
* include codes from system urn:oid:1.2.759.129.2.2.1.4



Profile: SEBasePractitioner
Parent: http://hl7.org/fhir/StructureDefinition/Practitioner
Title: "SE base profile for practitioner"
Description: "This is the base Practitioner profile to be used when profiling on Practitioner in a Swedish context"
* ^status = #active
* ^experimental = false
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice for swedish practitioner ID"
* identifier contains hsaid 0..1
* identifier[hsaid].system = "urn:oid:1.2.752.29.4.19" // (exactly)
* identifier[hsaid].type = http://terminology.hl7.org/CodeSystem/v2-0203#PRN // (exactly)

* name only SEBaseHumanName
* name 0..1

* address.extension contains SEBaseAddressPersonExtension named officialAddressType 0..1

* qualification.identifier ^slicing.discriminator.type = #value
* qualification.identifier ^slicing.discriminator.path = "system"
* qualification.identifier ^slicing.rules = #open
* qualification.identifier contains prescriber 0..1 and legitimation 0..1
* qualification.identifier[prescriber].system = "urn:oid:1.2.752.116.3.1.2" // (exactly)
* qualification.identifier[legitimation].system = "urn:oid:1.2.752.116.3.1.1" // (exactly)

* qualification.code.coding ^slicing.discriminator.type = #value
* qualification.code.coding ^slicing.discriminator.path = "system"
* qualification.code.coding ^slicing.rules = #open
* qualification.code.coding contains hosp 0..1 and
    sosnyk 0..1 and
    skr-yrke 0..1 and
    hsa-befattning 0..1
* qualification.code.coding[hosp].code from SEBaseHOSPLegitimationsYrkeVS (required)
* qualification.code.coding[hosp].system = "urn:oid:1.2.752.116.3.1.3"
* qualification.code.coding[sosnyk].code from SEBaseSOSNYKVS (required)
* qualification.code.coding[sosnyk].system = "urn:oid:1.2.752.116.1.3.6"
* qualification.code.coding[skr-yrke].code from SEBaseSKRYrkeVS (extensible)
* qualification.code.coding[skr-yrke].system = "http://snomed.info/sct"
* qualification.code.coding[hsa-befattning] from SEBaseHSABefattningVS (required)
* qualification.code.coding[hsa-befattning].system = "urn:oid:1.2.759.129.2.2.1.4"

Profile: SEBasePractitionerRole
Parent: http://hl7.org/fhir/StructureDefinition/PractitionerRole
Title: "SE base profil for practitioner role"
Description: "This is the base Practitioner Role profile to be used when profiling on Practitioner Role in a Swedish context"
* ^status = #active
* ^experimental = false
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice for swedish practitioner role ID (Medarbetaruppdrag)"
* identifier contains hsaid 0..1
* identifier[hsaid].system = "urn:oid:1.2.752.29.4.19" // (exactly)
* identifier[hsaid].type = http://terminology.hl7.org/CodeSystem/v2-0203#PRN // (exactly)
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
* specialty.coding[skr-yrke] from SEBaseSKRYrkeSpecialtyVS


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
* qualification.identifier[prescriber].value = "12345678"
* qualification.code = $SCT#309453006 "barnmorska"