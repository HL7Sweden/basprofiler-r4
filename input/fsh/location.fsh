Profile: SEBaseLocation
Id: SEBaseLocation
Description: "This is the base Location profile to be used when profiling on Location in a Swedish context"
Title: "SE Base Location"
Parent: Location

* ^status = #active
* ^experimental = false

* type MS
* type from SEBaseHSAVerksamhetVS (extensible)

* managingOrganization MS
// * managingOrganization only Reference(Organization) or SEBaseOrganization?

* partOf MS

