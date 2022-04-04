### Use of qualification
In the qulification element for this profile we present different slicing options for identifiers and for code. These are optional for an implementer and are not dependent on each other.
#### Identifier slices
- Prescriber
<br />
Unique code/identifier for a person working within the health care sector in Sweden that authorise the person to prescribe medication. The registry of prescriber identifiacations are provided and maintained by the swedish National Board of Health and Welfare.
- Legitimation
<br />
Identifier of a health care practitioners verified and secured licenced title. The registry (HOSP) is provided and maintained by the swedish National Board of Health and Welfare. This is an identifer only and should be accompanied with a code that clarifies which title the practitioner are licenced for - see slice *hosp* below. The use of this identifier is limited since the main identifier for the practitioner are often used instead. [Registret över legitimerad hälso- och sjukvårdspersonal (HOSP)](https://www.socialstyrelsen.se/statistik-och-data/register/halso-och-sjukvardspersonal/)

#### Code slices
- hosp
<br />
Code describing a health care practitioners verified and secured licenced title. The registry (HOSP) is provided and maintained by the swedish National Board of Health and Welfare. [Registret över legitimerad hälso- och sjukvårdspersonal (HOSP)](https://www.socialstyrelsen.se/statistik-och-data/register/halso-och-sjukvardspersonal/)
- sosnyk
<br />
Code system describing health care practitioner occupational categories used in swedish health care. The registry is provided and maintained by the swedish National Board of Health and Welfare. [Socialstyrelsens nationella yrkeskodverk (SOSNYK)](https://www.socialstyrelsen.se/statistik-och-data/klassifikationer-och-koder/andra-kodverk/sosnyk/)
- skr-yrke
<br />
Snomed selection of codes what can represent licenced and unlicenced titles used within swedish healthcare. These selections are used in some national specifications for interoperability.
- hsa-befattning
<br />
Code system for occupational categories used in the swedish master catalouge over health care organisation and personel. The code system is provided and maintained by the Inera AB. [HSA Innehåll Befattning](https://inera.atlassian.net/wiki/download/attachments/397444985/hsa_innehall_befattning.pdf)
