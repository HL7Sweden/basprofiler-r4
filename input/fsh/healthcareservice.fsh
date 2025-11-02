
ValueSet: SEBaseHSAVerksamhetVS
* ^status = #active
* ^experimental = false
* include codes from system urn:oid:1.2.752.129.2.2.1.3

Profile: SEBaseHealthcareService
Parent: HealthcareService
Id: SEBaseHealthcareService
Title: "SE base profile for healthcare service"
Description: "This is the base HealthcareService profile to be used when profiling on HealthcareService in a Swedish context"
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category ^slicing.description = "Slice for swedish categorization of healthcare service"
* category contains hsaverksamhet 0..*
* category[hsaverksamhet].coding.system = "urn:oid:1.2.752.129.2.2.1.3" (exactly)
* category[hsaverksamhet].coding from SEBaseHSAVerksamhetVS (required)
* category[hsaverksamhet].coding 1..1
* providedBy 1..1
* providedBy only Reference(Organization)  // or SEBaseOrganization?

Instance: HealthcareServiceExample1
InstanceOf: SEBaseHealthcareService
Description: "Healthcare service example"
* id = "HealthcareService1"
* category[hsaverksamhet].coding[+].system = "urn:oid:1.2.752.129.2.2.1.3"
* category[hsaverksamhet].coding[=].code = #1106 "Endokrinologi"
* providedBy = Reference(OrganizationExample1)