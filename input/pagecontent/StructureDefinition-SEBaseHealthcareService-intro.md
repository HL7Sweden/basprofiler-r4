### Use case
This diagramme shows how the resource healthcareService is used in conjunction with other resources to carry information about
- what type of services a single healthcare service or category of services provide
- if the organization that provided care is a Vårdenhet, Vårdgivare or both

This information is needed to fullfill Swedish regulations concerning sharing of patient information.

{% include SEBaseHealthcareService.svg %}



### Use of healthcareService.type/category
There are multiple code systems describing organization types in Sweden. <br />
- The National Board of Health and Welfare maintain a code system called "Verksamhetsområden" that is used for reporting quality data to national quality registries: [Verksamhetskoder](https://www.socialstyrelsen.se/globalassets/sharepoint-dokument/dokument-webb/klassifikationer-och-koder/sjukhuskoder-kodlista-verksamhetsomraden-2006.pdf) <br />
- The Health and Social Care Inspectorate (IVO) have a code system describing health care organizations that is used when reporting irregularities or register complaints. <br />
- Inera provide [HSA Verksamhetskoder](https://inera.atlassian.net/wiki/spaces/OIKH/pages/346560593/HSA+kodverk).  <br />

HSA Verksamhetskoder is the only code system that has been found with a clear namespace that can be identified and that is widely used in an interoperablilty context. Therefore, for now, the only code system used in this profile is the HSA Verksamhetskoder. If necessary, other code systems can be used when suitable.


