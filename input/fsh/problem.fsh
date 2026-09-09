ValueSet: ICD11VS
Id: icd11-vs
Title: "ICD-11 (MMS) Value Set"
Description: "Value set for ICD-11 (MMS) codes, sourced from the WHO ICD-11 MMS release."
* include codes from system http://id.who.int/icd/release/11/mms

Profile: ConditionICD11
Parent: Condition
Id: condition-icd11
Title: "Condition with ICD-11 code"
Description: "Profile of Condition that requires the code to use ICD-11 (MMS) codes."


// Bind the code element to ICD-11 value set (MMS) with required strength
* code from ICD11VS (required)

