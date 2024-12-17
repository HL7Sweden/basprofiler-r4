Profile: SEBaseMedication
Parent: Medication
Title: "SE base profil for medication"
Description: "This is the base Medication profile to be used when profiling on Medication in a Swedish context"
* insert SEStandardRuleSet
* meta.security.code from SecurityLabelVS (extensible)

// Proposal for identifiers:
* identifier 1.. MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice for medication identifiers"
* identifier contains
        NplPackId 0..1 MS
    and varunr 0..1 MS
* identifier[NplPackId].system = "http://electronichealth.se/identifier/nplpackid" (exactly)
* identifier[varunr].system = "http://electronichealth.se/identifier/varunr" (exactly)
