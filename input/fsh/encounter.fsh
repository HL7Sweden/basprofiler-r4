Profile: SEBaseEncounter
Id: SEBaseEncounter
Description: "This is the base Encounter profile to be used when profiling on Organization in a Swedish context"
Title: "SE Base Encounter"
Parent: Encounter

* ^status = #active
* ^experimental = false

* serviceType MS
* serviceType from SEBaseHSAVerksamhetVS (required)

* serviceProvider MS
// * serviceProvider only Reference(Organization) or SEBaseOrganization?

* location.location MS

* class ^definition = "use VardOmsorgsformToEncounterCode Concept Map for mapping of vard omsorgsform to R4 required encounter class codes"

/* info på confluence
https://github.com/HL7Sweden/basprofiler-r4/issues/71
https://confluence.hl7.org/spaces/HS/pages/413238990/kartl%C3%A4ggning+informationsbehov 
*/