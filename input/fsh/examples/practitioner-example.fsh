Instance: PractitionerExample1
InstanceOf: SEBasePractitioner
Title: "PractitionerExample1"
Description: "Practitioner example"
Usage: #example
* id = "PractitionerExample1"
* name
  * extension[middleName].valueString = "Johansson"
  * extension[ownFamily].valueString = "Falck"
  * given[+] = "Anna"
    * extension[nameQualifier].valueCode = #CL
  * given[+] = "Sofia"
    * extension[nameQualifier].valueCode = #CL
  * use = #official
  * family = "Falck Johansson"
  * text = "Anna Sofia Falck"
* identifier[hsaid].value = "SE2321000131-P000000123456"
* qualification
  * identifier[prescriber].value = "12345678"
  * code = $SCT#309453006 // "barnmorska"