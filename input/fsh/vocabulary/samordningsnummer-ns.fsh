Instance: SamordningsnummerNS
InstanceOf: NamingSystem
Title: "Samordningsnummer NamingSystem"
Usage: #definition
Description: "NamingSystem for the Swedish coordination number (samordningsnummer), an identifier assigned to individuals who are not registered in the Swedish Population Register but need an identifier in their dealings with Swedish authorities."

* name = "SamordningsnummerNS"
* status = #active
* kind = #identifier
* type = $v2-0203#NNSWE
* date = "2026-10-12"
* publisher = "HL7 Sweden"
* contact[+]
  * name = "HL7 Sweden"
  * telecom[+]
    * system = #email
    * value = "info@hl7.se"
    * use = #work
* responsible = "Skatteverket"

* uniqueId[+]
  * type = #oid
  * value = "1.2.752.129.2.1.3.3"
  * preferred = false
  * comment = "Use the OID type where required for interoperability in contexts where this is the preferred. E.g RIV TA service contracts."

* uniqueId[+]
  * type = #uri
  * value = "http://electronichealth.se/identifier/samordningsnummer"
  * preferred = true

//Proposal for R5: * purpose = "Patient identifier types can be identified by using either URI or OID depending on context and the standard used within. The URI type is preferred in FHIR based interactions, whereas OID may be preferred in other contexts, e.g RIV TA. The purpose of this naming system is to provide support to translate identifier types between URI and OID."
