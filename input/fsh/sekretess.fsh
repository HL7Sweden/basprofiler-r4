Alias: ACTCODE = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: SECLABEL = http://electronichealth.se/CodeSystem/SecurityLabel

CodeSystem: SecurityLabelCS
Id: SecurityLabel
Title: "SE CodeSystem security labels"
Description: "This is the CodeSystem for security labels in accordance with the swedish authorities"
* #protected-information "Protected information" 
    "Protected demographic information according to 22 kap. 1 § OSL (Offentlighets- och sekretesslagen)"
* concept[code=#protected-information].designation.use = #900000000000013009
* concept[code=#protected-information].designation.value = "Sekretessmarkering"
ValueSet: SecurityLabelVS
Title: "SE ValueSet security labels"
Description: "This is the ValueSet for security labels in accordance with the swedish authorities"
* insert SEStandardRuleSet
* http://terminology.hl7.org/CodeSystem/v3-ActCode#DEMO
* SecurityLabelCS#protected-information