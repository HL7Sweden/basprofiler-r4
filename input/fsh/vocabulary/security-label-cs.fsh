CodeSystem: SecurityLabelCS
Id: SecurityLabel
Title: "SE CodeSystem security labels"
Description: "This is the CodeSystem for security labels in accordance with the swedish authorities"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #sekretessmarkering "Sekretessmarkering"
"Protected demographic information according to 22 kap. 1 § OSL (Offentlighets- och sekretesslagen)"
* #skyddadFolkbokforing "Skyddad folkbokföring"
"Protected demographic information according to Skatteverket"
//* #protected-information ^designation.language = #sv
//* #protected-information ^designation.value = "sekretessmarkering"