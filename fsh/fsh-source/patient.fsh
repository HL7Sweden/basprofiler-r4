Alias:   SCT = http://snomed.info/sct

ValueSet: SEBasisAddressPatVS
Description: "Bla bla bla"
* SCT#63391000052104 "särskild postadress"
* SCT#63381000052101 "folkbokföringsadress"
// osv... från 500201000057102 | urval adresstyp |

Extension: SEBasisAddressPatExtension
Description: "Bla bla bla"
* value[x] only CodeableConcept
* valueCodeableConcept from SEBasisAddressPatVS (required)

Profile: SEPatient
Parent: http://hl7.org/fhir/StructureDefinition/Patient
Title: "SE basprofil patient"
Description: "Bla bla bla"
* address.extension contains SEBasisAddressPatExtension named officialAddressType 1..1