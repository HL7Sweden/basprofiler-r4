### In development

#### Added

[SE base Patient](StructureDefinition-SEBasePatient.html) has two new examples: [a patient registered as Vilhelm who prefers to be called Ville](Patient-PatientExample201301012397.html), a name that is not one of the registered given names, and [a patient whose personnummer changed after a change of legal gender](Patient-PatientExample198506152399.html).

A [Download](download.html) page links the full IG, the NPM package, the definitions and the examples.

The [home page](index.html) describes how to get involved, how to raise issues, and security, safety and privacy considerations.

#### Changed

[SE base Patient](StructureDefinition-SEBasePatient.html) allows more than one name: `name` is now `0..*`. The name registered in folkbokföringen uses `use = official`, and other names sit next to it as separate HumanNames, such as a preferred name that is not one of the registered given names (`usual` or `nickname`) or an earlier name (`old` or `maiden`).

[SE base Patient](StructureDefinition-SEBasePatient.html) keeps earlier national identifiers: the `personalIdentityNumber`, `coordinationNumber` and `nationalReserveNumber` slices are now `0..*`, so a number that was replaced, for example after a change of legal gender or a corrected date of birth, can stay with `use = old`. The new invariant `se-base-patient-1` allows at most one current number of each type.

[SE base Practitioner](StructureDefinition-SEBasePractitioner.html) and [HSA befattning](ValueSet-SEBaseHSABefattningVS.html) now use the correct HSA befattning OID `urn:oid:1.2.752.129.2.2.1.4`. Previously it was `urn:oid:1.2.759.129.2.2.1.4`, which is not the HSA code system, so a correctly coded befattning did not match the `hsa-befattning` slice.

[SKR yrke](ValueSet-SEBaseSKRYrkeVS.html) now lists the 266 SNOMED CT concepts of SKR's Kodverk för yrken i hälso- och sjukvården explicitly, in place of two refset filters.

References to FHIR core profiles and value sets are now pinned to FHIR 4.0.1, such as `http://hl7.org/fhir/ValueSet/identifier-type|4.0.1`.

#### Breaking changes

The identifier slices in [SE base Patient](StructureDefinition-SEBasePatient.html) have English names: `personnummer` is now `personalIdentityNumber`, `samordningsnummer` is now `coordinationNumber` and `nationelltReservnummer` is now `nationalReserveNumber`. Profiles derived from it refer to `identifier:personalIdentityNumber` in place of `identifier:personnummer`, and likewise for the other slices. Instances are not affected, since the slices are told apart by `system`.

The SKR yrke specialty value set `http://hl7.se/fhir/ig/base/ValueSet/SEBaseSKRYrkeSpecialtyVS` is removed, and the `skr-yrke` slice of `PractitionerRole.specialty.coding` in [SE base PractitionerRole](StructureDefinition-SEBasePractitionerRole.html) no longer has a binding.

### Version 1.1.0

#### Added

Nine [SE base Patient](StructureDefinition-SEBasePatient.html) examples based on test data from Inera's PU test environment: patients identified by a personnummer, including ones with [sekretessmarkering](Patient-PatientExample200001252386.html) and [skyddad folkbokföring](Patient-PatientExample189602029812.html), by a [samordningsnummer](Patient-PatientExample196109732393.html), and by a [nationellt reservnummer](Patient-PatientExample98240301AA06.html).

The [home page](index.html) lists the intellectual property statements, dependencies, cross-version analysis and global profiles.

#### Changed

All profiles, extensions, value sets and code systems now have status `active` instead of `draft`.

The slices on `Practitioner.qualification.code.coding` in [SE base Practitioner](StructureDefinition-SEBasePractitioner.html) now fix their `system`: `urn:oid:1.2.752.116.3.1.3` for `hosp`, `urn:oid:1.2.752.116.1.3.6` for `sosnyk` and `http://snomed.info/sct` for `skr-yrke`. Without a fixed system the slices could not be told apart. The `hsa-befattning` slice got `urn:oid:1.2.759.129.2.2.1.4`, which is the wrong OID and is corrected in the next version.

The `sosnyk` slice of `PractitionerRole.specialty.coding` in [SE base PractitionerRole](StructureDefinition-SEBasePractitionerRole.html) is now bound to [SOSNYK](ValueSet-SEBaseSOSNYKVS.html).

Identifier systems and types in [SE base Patient](StructureDefinition-SEBasePatient.html), [SE base Practitioner](StructureDefinition-SEBasePractitioner.html), [SE base PractitionerRole](StructureDefinition-SEBasePractitionerRole.html) and [SE base Organization](StructureDefinition-SEBaseOrganization.html) are now patterns instead of fixed values, so an identifier type can carry a display or more codings.

[Marital status](ValueSet-SEBaseMaritalStatusVS.html) now takes `M`, `D`, `W` and `U` from the code system `http://terminology.hl7.org/CodeSystem/v3-MaritalStatus`. Previously it named the value set `http://hl7.org/fhir/ValueSet/marital-status` as the system.

The value sets have titles, and the [marital status](CodeSystem-se-base-marital-status.html) and [security label](CodeSystem-SecurityLabel.html) code systems are case sensitive.

#### Breaking changes

The nationellt reservnummer identifier system in [SE base Patient](StructureDefinition-SEBasePatient.html) is corrected from `http://electronichealth.se/identifier/nationelltReservnumer` to `http://electronichealth.se/identifier/nationelltReservnummer`. Senders switch to the new system.

[SE base PractitionerRole](StructureDefinition-SEBasePractitionerRole.html) slices `code.coding` and `specialty.coding` instead of `code` and `specialty`, since the slices are told apart by `system`, which is on Coding. Profiles derived from it refer to `code.coding:sosnyk` in place of `code:sosnyk`, and likewise for the other slices.

### Version 1.0.0

First published version. It has profiles for [Patient](StructureDefinition-SEBasePatient.html), [Practitioner](StructureDefinition-SEBasePractitioner.html), [PractitionerRole](StructureDefinition-SEBasePractitionerRole.html), [Organization](StructureDefinition-SEBaseOrganization.html), [HumanName](StructureDefinition-SEBaseHumanName.html) and the [LMA number](StructureDefinition-SEBaseLMANummer.html), extensions for [middle name](StructureDefinition-SEBaseMiddleNameExtension.html), [own family name](StructureDefinition-SEBaseOwnFamilyExtension.html) and [official address type](StructureDefinition-SEBaseAddressPersonExtension.html), and value sets and code systems for marital status, security labels, name qualifiers, address types and the HOSP, HSA, SKR and SOSNYK code systems.
