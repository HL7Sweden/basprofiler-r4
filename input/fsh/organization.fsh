
ValueSet: SEBaseOrganizationTypeVS
Id: SEBaseOrganizationTypeVS
Title: "SE ValueSet for organization types"
Description: "This value sets contains organization types relevant for Swedish healthcare"
* $SCT#43741000 "vårdenhet"
* $SCT#143591000052106 "vårdgivare"

ValueSet: SEBaseHSAVerksamhetVS
* ^status = #active
* ^experimental = false
* insert SEStandardRuleSet
* include codes from system urn:oid:1.2.752.129.2.2.1.3

Profile: SEBaseOrganization
Parent: http://hl7.org/fhir/StructureDefinition/Organization
Title: "SE base profile for organization"
Description: "This is the base Organization profile to be used when profiling on Organization in a Swedish context"
* ^status = #active
* ^experimental = false
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
* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "system"
* type.coding ^slicing.rules = #open
* type.coding contains orgTypeSct 0..1 and hsaType 0..1
* type.coding[orgTypeSct] from SEBaseOrganizationTypeVS (extensible)
* type.coding[hsaType] from SEBaseHSAVerksamhetVS (required)

Instance: OrganizationExample1
InstanceOf: SEBaseOrganization
Description: "Organization example"
* id = "Organization1"
* identifier[hsaid].value = "SE2321000131-P000000123457"
* type.coding[+] = $SCT#143591000052106
* type.coding[+] = http://local.org#code-for-care-provider
* type.coding[+] = $SCT#43741000
* type.coding[+] = http://local.org#code-for-care-unit