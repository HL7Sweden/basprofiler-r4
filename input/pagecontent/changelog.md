### In development

#### Added

[SE base Patient](StructureDefinition-SEBasePatient.html) has two new examples: [a patient registered as Vilhelm who prefers to be called Ville](Patient-PatientExample201301012397.html), a name that is not one of the registered given names, and [a patient whose personnummer changed after a change of legal gender](Patient-PatientExample198506152399.html).

A [Download](download.html) page links the full IG, the NPM package, the definitions and the examples.

The [home page](index.html) describes how to get involved, how to raise issues, and security, safety and privacy considerations.

#### Changed

[SE base Patient](StructureDefinition-SEBasePatient.html) allows more than one name: `name` is now `0..*`. The name registered in folkbokföringen uses `use = official`, and other names sit next to it as separate HumanNames, such as a preferred name that is not one of the registered given names (`usual` or `nickname`) or an earlier name (`old` or `maiden`).

[SE base Patient](StructureDefinition-SEBasePatient.html) keeps earlier national identifiers: the `personnummer`, `samordningsnummer` and `nationelltReservnummer` slices are now `0..*`, so a number that was replaced, for example after a change of legal gender or a corrected date of birth, can stay with `use = old`. The new invariant `se-base-patient-1` allows at most one current number of each type.

[SE base Practitioner](StructureDefinition-SEBasePractitioner.html) and [HSA befattning](ValueSet-SEBaseHSABefattningVS.html) now use the correct HSA befattning OID `urn:oid:1.2.752.129.2.2.1.4`. Previously it was `urn:oid:1.2.759.129.2.2.1.4`, which is not the HSA code system, so a correctly coded befattning did not match the `hsa-befattning` slice.

[SKR yrke](ValueSet-SEBaseSKRYrkeVS.html) now lists the 266 SNOMED CT concepts of SKR's Kodverk för yrken i hälso- och sjukvården explicitly, in place of two refset filters.

References to FHIR core profiles and value sets are now pinned to FHIR 4.0.1, such as `http://hl7.org/fhir/ValueSet/identifier-type|4.0.1`.

#### Breaking changes

The SKR yrke specialty value set `http://hl7.se/fhir/ig/base/ValueSet/SEBaseSKRYrkeSpecialtyVS` is removed, and the `skr-yrke` slice of `PractitionerRole.specialty.coding` in [SE base PractitionerRole](StructureDefinition-SEBasePractitionerRole.html) no longer has a binding.

### Version 1.1.0 and earlier

Changes before 1.1.0 are not listed here. See the [version history](http://hl7.se/fhir/ig/base/history.html) for the published versions.
