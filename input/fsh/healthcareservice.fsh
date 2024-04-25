Profile: SEBaseHealthcareService
Parent: HealthcareService
Id: SEBaseHealthcareService
Title: "SE base profile for healthcare service"
Description: "This is the base HealthcareService profile to be used when profiling on HealthcareService in a Swedish context"
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "system"
* category ^slicing.rules = #open
* category ^slicing.description = "Slice for swedish categorization of healthcare service"
* category contains hsaverksamhet 0..1
* category[hsaverksamhet].coding.system = "urn:oid:1.2.752.129.2.2.1.3" (exactly)
* category[hsaverksamhet].coding from SEBaseHSAVerksamhetVS (required)
* category[hsaverksamhet].coding 1..*
* providedBy 1..1
* providedBy only Reference(Organization)  // or SEBaseOrganization?