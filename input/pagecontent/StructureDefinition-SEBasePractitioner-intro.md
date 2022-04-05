### Use of qualification
In the qualification element for this profile we present different slicing options for identifiers and for code. These are optional for an implementer and are not dependent on each other.
#### Identifier slices
- Prescriber
<br />
Unique code/identifier for a person working within the health care sector in Sweden that authorises the person to prescribe medication. The registry of prescriber identifications are provided and maintained by the Swedish National Board of Health and Welfare.
- Legitimation
<br />
Identifier of a health care practitioner´s verified and secured licenced title. The registry (HOSP) is provided and maintained by the Swedish National Board of Health and Welfare. This is an identifer only and should be accompanied by a code that clarifies which title the practitioner is licenced for - see slice *hosp* below. The use of this identifier is limited since the main identifier for the practitioner is often used instead. [Registret över legitimerad hälso- och sjukvårdspersonal (HOSP)](https://www.socialstyrelsen.se/statistik-och-data/register/halso-och-sjukvardspersonal/)

#### Code slices
- hosp
<br />
Code describing a health care practitioner´s verified and secured licenced title. The registry (HOSP) is provided and maintained by the Swedish National Board of Health and Welfare. [Registret över legitimerad hälso- och sjukvårdspersonal (HOSP)](https://www.socialstyrelsen.se/statistik-och-data/register/halso-och-sjukvardspersonal/)
- sosnyk
<br />
Code system describing health care practitioner occupational categories used in Swedish healthcare. The registry is provided and maintained by the Swedish National Board of Health and Welfare. [Socialstyrelsens nationella yrkeskodverk (SOSNYK)](https://www.socialstyrelsen.se/statistik-och-data/klassifikationer-och-koder/andra-kodverk/sosnyk/)
- skr-yrke
<br />
Snomed selection of codes that can represent licenced and unlicenced titles used within Swedish healthcare. These selections are used in some national specifications for interoperability.
- hsa-befattning
<br />
Code system for occupational categories used in the Swedish master catalouge over healthcare organisation and personel. The code system is provided and maintained by Inera AB. [HSA Innehåll Befattning](https://inera.atlassian.net/wiki/download/attachments/397444985/hsa_innehall_befattning.pdf)
