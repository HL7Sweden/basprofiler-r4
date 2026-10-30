Profile: SEBaseOrganization
Parent: Organization
Title: "SE base profile for organization"
Description: "This is the base Organization profile to be used when profiling on Organization in a Swedish context"
* ^status = #active
* ^experimental = false
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice for swedish organization ID"
* identifier contains hsaid 0..1
* identifier[hsaid].system = $hsaid // (exactly)
* identifier[hsaid].type = $v2-0203#PRN // (exactly)
* identifier contains organizationIdentifier 0..1
* identifier[organizationIdentifier].system = "urn:oid:2.5.4.97" // (exactly)
* identifier[organizationIdentifier].type = $v2-0203#XX // (exactly)
* type from SEBaseHSAVerksamhetVS (extensible)


