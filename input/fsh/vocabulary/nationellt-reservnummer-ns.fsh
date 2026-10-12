Instance: NationelltReservnummerNS
InstanceOf: NamingSystem
Title: "Nationellt Reservnummer NamingSystem"
Usage: #definition
Description: "NamingSystem for the Swedish national reserve identifier (nationellt reservnummer, NRID), an identifier issued by Inera for individuals who need to be identified in healthcare or administrative systems."

* name = "NationelltReservnummerNS"
* status = #active
* kind = #identifier
* type = $v2-0203#PNT
* date = "2026-10-12"
* publisher = "HL7 Sweden"
* contact[+]
  * name = "HL7 Sweden"
  * telecom[+]
    * system = #email
    * value = "info@hl7.se"
    * use = #work
* responsible = "Inera"

* uniqueId[+]
  * type = #oid
  * value = "1.2.752.74.9.1"
  * preferred = false
  * comment = "Use the OID type where required for interoperability in contexts where this is the preferred. E.g RIV TA service contracts."

* uniqueId[+]
  * type = #uri
  * value = "http://electronichealth.se/identifier/nationelltReservnummer"
  * preferred = true

//Proposal for R5: * purpose = "Patient identifier types can be identified by using either URI or OID depending on context and the standard used within. The URI type is preferred in FHIR based interactions, whereas OID may be preferred in other contexts, e.g RIV TA. The purpose of this naming system is to provide support to translate identifier types between URI and OID."
