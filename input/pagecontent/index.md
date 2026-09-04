### HL7 FHIR version R4 base profiles for Sweden
This FHIR implementation guide is published by HL7 Sweden and expresses the base profiles and extensions of FHIR resourses that are widely used in Sweden. The implementations guide is a description of the lowerst common denominator in adjustesments that needs to be made on the FHIR standard for applying it in a Swedish context. The profiles in this IG can be used without an further altering, but in most cases it is probably neccesary (and recommended) to make further adjustments in accordance with your applicable use case.
The extenstions on the other hand will often be useful without further alteration.

<!---
Denna implementationsguide publiceras av HL7 Sverige och samlar de grundläggande profileringar och utökningar av FHIR resurser som har bred användning i Sverige. I guiden beskrivs minsta gemensamma nämnare i förändingar som behöver göras på FHIR standarden för tillämpning i ett svenskt sammanhang. Profilerna kan användas utan vidare förändingar men det är antagligen nödvändigt (och rekommenderat) att anpassa dessa genom ytterligare profilering för att bättre passa tänkt användning.
Utökningarna (extensions) kan däremot ofta vara lämpliga att nyttja utan vidare förädling.
-->
### The working group
The development of this implementation guide is carried out by a work group under the management of HL7 Sweden <http://hl7.se>. The group is composed of representatives from regions, state authorities, system vendors and other experts within the FHIR standard, informatics, architecture and terminology.

<!---
Framtagandet av dessa basprofiler och utökningar genomförs av en arbetsgrupp under HL7 Sverige <http://hl7.se>. Gruppen består av representanter från regioner, myndigheter, systemleverantörer samt andra experter inom FHIR, informatik, arkitektur, terminologi etc.
-->

### Getting involved
Work on this implementation guide is coordinated through HL7 Sweden's open meetings and working groups. The base profiles working group meets regularly, and the monthly Samordningsmöte (coordination meeting) is open to anyone interested in Swedish FHIR work.

For meeting cadence, joining instructions, and other communication channels, see the HL7 Sweden [Meetings page](https://confluence.hl7.org/spaces/HS/pages/248875365/Meetings). General enquiries can be sent to <info@hl7.se>.

### Raising issues
Issues, errata, and change requests against this implementation guide are tracked on GitHub at <https://github.com/HL7Sweden/basprofiler-r4/issues>. To raise an issue, open a new issue in that tracker; please include the affected resource, the IG version, and a clear description of the problem or proposal.

For general questions or discussion that are not issues against the specification, see [Getting involved](#getting-involved) above.

### Security, safety, and privacy
This implementation guide defines structural profiles, extensions, value sets, and code systems only. It does not specify exchange protocols, authentication, authorisation, or audit mechanisms, and it does not itself process or transmit personal data. Implementers remain responsible for applying appropriate security, safety, and privacy controls in their own systems, including (but not limited to) compliance with the EU General Data Protection Regulation (GDPR), the Swedish Patient Data Act, Patientdatalag (2008:355), and any sector-specific requirements that apply to their deployment.

The Swedish personal identity number (`personnummer`) and other identifiers profiled in this guide are sensitive personal data under Swedish law. Implementations using these profiles must ensure that storage, transmission, access control, and audit logging meet the applicable legal and organisational requirements.

No security, safety, or privacy issues specific to the artefacts in this implementation guide are currently known. To report a suspected security, safety, or privacy issue, open an issue at <https://github.com/HL7Sweden/basprofiler-r4/issues>; if the issue is sensitive and should not be disclosed publicly, contact HL7 Sweden directly at <info@hl7.se> instead.

### IP Statements

This document is licensed under Creative Commons "No Rights Reserved" ([CC0](https://creativecommons.org/publicdomain/zero/1.0/)).

HL7®, HEALTH LEVEL SEVEN®, FHIR® and the FHIR <img src="icon-fhir-16.png" style="float: none; margin: 0px; padding: 0px; vertical-align: bottom"/>&reg; are trademarks owned by Health Level Seven International, registered with the United States Patent and Trademark Office.

This implementation guide contains and references intellectual property owned by third parties ("Third Party IP"). Acceptance of these License Terms does not grant any rights with respect to Third Party IP. The licensee alone is responsible for identifying and obtaining any necessary licenses or authorizations to utilize Third Party IP in connection with the specification or otherwise.

{% include ip-statements.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Dependency Table

{% include dependency-table.xhtml %}

### Globals Table

{% include globals-table.xhtml %}