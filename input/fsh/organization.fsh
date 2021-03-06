

Profile: SEBaseOrganization
Parent: http://hl7.org/fhir/StructureDefinition/Organization
Title: "SE base profil for organization"
Description: "This is the base Organization profile to be used when profiling on Organization in a Swedish context"
* insert SEStandardRuleSet
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice for swedish organization ID"
* identifier contains hsaid 0..1
* identifier[hsaid].system = "urn:oid:1.2.752.29.4.19" (exactly)
* identifier[hsaid].type = http://terminology.hl7.org/CodeSystem/v2-0203#PRN (exactly)
* identifier contains organizationIdentifier 0..1
* identifier[organizationIdentifier].system = "urn:oid:2.5.4.97" (exactly)
* identifier[organizationIdentifier].type = http://terminology.hl7.org/CodeSystem/v2-0203#XX (exactly)

Instance: OrganizationExample1
InstanceOf: SEBaseOrganization
Description: "Organization example"
* id = "Organization1"

* identifier[hsaid].value = "SE2321000131-P000000123457"