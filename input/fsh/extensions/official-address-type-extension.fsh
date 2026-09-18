Extension: SEBaseAddressPersonExtension
Title: "SE extension for official address types"
Description: "This extension defines the official ValueSet to be used when expressing address type in accordance with the Swedish authorities"
* ^status = #active
* ^experimental = false
* ^context[+].type = #element
* ^context[=].expression = "Address"
* value[x] only CodeableConcept
* valueCodeableConcept from SEBaseAddressPersonVS (required)
// alt. * valueCodeableConcept from http://snomed.info/sct/45991000052106/ValueSet?fhir_vs=refset/64691000052109 (required)