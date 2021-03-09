Alias: ACTCODE = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: SECLABEL = http://electronichealth.se/CodeSystem/SecurityLabel

CodeSystem: SecurityLabelCS
Id: SecurityLabel
Title: "SE CodeSystem security labels"
Description: "This is the CodeSystem for security labels in accordance with the swedish authorities"
* #sekretessmarkering "sekretessmarkering" 
    "Protected demographic information according to 22 kap. 1 § OSL (Offentlighets- och sekretesslagen)"
//* #protected-information ^designation.language = #sv
//* #protected-information ^designation.value = "sekretessmarkering"

ValueSet: SecurityLabelVS
Title: "SE ValueSet security labels"
Description: "This is the ValueSet for security labels in accordance with the swedish authorities"
* insert SEStandardRuleSet
* http://terminology.hl7.org/CodeSystem/v3-ActCode#DEMO
* SecurityLabelCS#sekretessmarkering
