
ValueSet: SEBaseHSAVerksamhetVS
* ^status = #active
* ^experimental = false
* insert SEStandardRuleSet
* include codes from system urn:oid:1.2.752.129.2.2.1.3

CodeSystem: SCBOwnershipCodeSystem
Title: "ÄGAR 2020"
Description: "Code system ÄGAR2020"
// HSA använder OID 1.2.752.129.2.2.1.14
* ^experimental = false
* ^caseSensitive = false
* #10 "Statligt kontrollerade enheter" // 10 eller 1? finns i HSA
* #20 "Kommunalt kontrollerade enheter" // 20 eller 2? finns i HSA men som substantiv
* #30 "Regionkontrollerade enheter" // 30 eller 3? Landsting vs. region
* #4 "Privat svenskkontrollerade enheter"
* #4 #41 "Privat svenskkontrollerade enheter utan koncerntillhörighet"
* #4 #42 "Privat svenskkontrollerade enheter med koncerntillhörighet"
* #50 "Utlandskontrollerade enheter"

ValueSet: SCBOwnershipValueSet
Title: "ÄGAR 2020 value set"
Description: "Value set containing all codes from ÄGAR 2020 code system"
* ^experimental = false
* include codes from system SCBOwnershipCodeSystem

CodeSystem: SCBLegalFormCodeSystem
Title: "JURFORM 2020"
Description: "Code system JURFORM 2020"
* ^experimental = false
* ^caseSensitive = false
* #10	"Fysiska personer"
* #21	"Enkla bolag"
* #22	"Partrederier"
* #23	"Värdepappersfonder"
* #31	"Handelsbolag, kommanditbolag"
* #41	"Bankaktiebolag"
* #42	"Försäkringsaktiebolag"
* #43	"Europabolag"
* #49	"Övriga aktiebolag"
* #51	"Ekonomiska föreningar"
* #53	"Bostadsrättsföreningar"
* #54	"Kooperativ hyresrättsförening"
* #55	"Europakooperativ, grupperingar"
* #61	"Ideella föreningar"
* #62	"Samfälligheter"
* #63	"Registrerade trossamfund"
* #71	"Familjestiftelser"
* #72	"Övriga stiftelser och fonder"
* #81	"Statliga enheter"
* #82	"Kommuner"
* #83	"Kommunalförbund"
* #84	"Landsting"
* #87	"Off. korporationer o anstalter"
* #88	"Hypoteksföreningar"
* #91	"Oskiftade dödsbon"
* #92	"Ömsesidiga försäkringsbolag"
* #93	"Sparbanker"
* #94	"Understöds-, Försäkringsfören."
* #95	"Arbetslöshetskassor"
* #96	"Utländska juridiska personer"
* #98	"Övr sv jur pers, enl särsk lag"
* #99	"Juridisk form ej utredd"

ValueSet: SCBLegalFormValueSet
Title: "JURFORM 2020 value set"
Description: "Value set containing all codes from JURFORM 2020 code system"
* ^experimental = false
* include codes from system SCBLegalFormCodeSystem

Extension: SEBaseOrganizationActiveStatusExtension
Title: "SE extension for organization status"
Description: "SE extension for organization status (active=true, inactive=false). Note that current element Organization.active is used for \"Whether the organization's record is still in active use\"."
Context: Organization
* ^experimental = false
* value[x] only boolean

Extension: SEBaseOrganizationLegalFormExtension
Title: "SE extension for organization legal form"
Description: "SE extension for organization legal form"
Context: Organization
* ^status = #active
* ^experimental = false
* value[x] only Coding
* valueCoding from SCBLegalFormValueSet (required)

Extension: SEBaseOrganizationOwnershipExtension
Title: "SE extension for organization ownership type"
Description: "SE extension for organization ownership type"
Context: Organization
* ^status = #active
* ^experimental = false
* value[x] only Coding
* valueCoding from SCBOwnershipValueSet (required)

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
* type from SEBaseHSAVerksamhetVS (extensible)
* extension contains SEBaseOrganizationActiveStatusExtension named organizationActive 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/organization-period named period 0..1
* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-Organization.description named description 0..1
* extension contains SEBaseOrganizationLegalFormExtension named legalForm 0..1 MS
* extension contains SEBaseOrganizationOwnershipExtension named ownershipType 0..1 MS

Instance: OrganizationExample1
InstanceOf: SEBaseOrganization
Description: "Organization example"
* id = "Organization1"
* identifier[hsaid].value = "SE2321000131-P000000123457"