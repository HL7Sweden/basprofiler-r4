Instance: VardOmsorgsformToEncounterCodeCM
InstanceOf: ConceptMap
Description: "A map from HSA Vård- och omsorgsform to HL7 v3 Value Set ActEncounterCode"
Title: "Vård- och omsorgsform to ActEncounterCode"
Usage: #definition


// * url = TBD
* version = "1.0.0"
* name = "VardOchOmsorgsformToActEncounterCode"
* title = "Vård- och omsorgsform to ActEncounterCode"
* status = #draft
// * date = "2026-xx-xx"
* publisher = "HL7 Sweden"
* description = "A map from HSA Vård- och omsorgsform to HL7 v3 Value Set ActEncounterCode"

* sourceUri = "urn:oid:1.2.752.129.2.2.1.13"
* targetUri = "http://terminology.hl7.org/ValueSet/v3-ActEncounterCode"

* group[0]
  * .source = "urn:oid:1.2.752.129.2.2.1.13"
  * .sourceVersion = "2025-04-24" 
  * .target = "http://terminology.hl7.org/ValueSet/v3-ActEncounterCode"
  * .targetVersion = "2014-03-26"

* group[0].element[0]
  * .code = #01 
  * .display = "Öppen vård"
  * .target[0]
    * .code = #AMB
    * .display = "ambulatory"
    * .equivalence = #equivalent

* group[0].element[+]
  * .code = #02
  * .display = "Sluten vård"
  * .target[0]
    * .code = #IMP
    * .display = "inpatient encounter"
    * .equivalence = #equivalent

* group[0].element[+]
  * .code = #03
  * .display = "Hemsjukvård"
  * .target[0]
    * .code = #HH
    * .display = "home health"
    * .equivalence = #equivalent

* group[0].element[+]
  * .code = #04
  * .display = "Socialtjänst"
  * .target[0]
    * .equivalence = #unmatched