Profile: SEBaseMedication
Parent: Medication
Title: "SE base profil for medication"
Description: "This is the base Medication profile to be used when profiling on Medication in a Swedish context"
* insert SEStandardRuleSet
* meta.security.code from SecurityLabelVS (extensible)

* code 1.. MS
* code from SEBaseMedicationCodeSystemsVS (preferred)



Profile: SEBaseMedicationPackage
Parent: Medication
Title: "SE base profil for medicationpackage"
Description: "This is the base Medication profile to be used when profiling on Medication package in a Swedish context"
* insert SEStandardRuleSet
* meta.security.code from SecurityLabelVS (extensible)

* code 1.. MS
* code from SEBaseMedicationPackageCodeSystemsVS (preferred)

* ingredient MS
* ingredient.item[x] only Reference(SEBaseMedication)

ValueSet: SEBaseMedicationCodeSystemsVS
Title: "SE ValueSet for medication code systems"
* ^status = #active
* include codes from system $NPLID


ValueSet: SEBaseMedicationPackageCodeSystemsVS
Title: "SE ValueSet for medication package code systems"
* ^status = #active
* include codes from system $NPLPACKID
* include codes from system $VARUNR
