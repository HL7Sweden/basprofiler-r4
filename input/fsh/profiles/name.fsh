Profile: SEBaseHumanName
Parent: HumanName
Description: "This profile provides the use of Swedish middlename and own family name as extensions and is used in the base Patient profile"
* ^status = #active
* ^experimental = false
* extension contains SEBaseMiddleNameExtension named middleName 0..1
* extension contains SEBaseOwnFamilyExtension named ownFamily 0..1
* given.extension contains http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier named nameQualifier 0..1
* given.extension[nameQualifier].valueCode from SEBaseNamePartQualifierVS (required)
