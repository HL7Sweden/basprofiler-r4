Profile: SEBaseHealthcareService
Parent: HealthcareService
Id: SEBaseHealthcareService
Title: "SE base profile for healthcare service"
Description: "This is the base HealthcareService profile to be used when profiling on HealthcareService in a Swedish context"

* category MS 

* type MS
* type from SEBaseHSAVerksamhetVS (required)

* specialty MS
// * specialty from Practice Setting Code Value Set

* location MS

* providedBy MS
// * providedBy only Reference(Organization) or SEBaseOrganization?




ValueSet: SEBaseHSAVerksamhetVS
* ^status = #active
* ^experimental = false
* include codes from system urn:oid:1.2.752.129.2.2.1.3



Instance: HealthcareServiceExample1
InstanceOf: SEBaseHealthcareService
Description: "Healthcare service example"
* id = "HealthcareService1"
// * category[hsaverksamhet].coding[+].system = "urn:oid:1.2.752.129.2.2.1.3"
// * category[hsaverksamhet].coding[=].code = #1106 "Endokrinologi"
* providedBy = Reference(OrganizationExample1)