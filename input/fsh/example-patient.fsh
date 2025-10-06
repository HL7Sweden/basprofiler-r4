/*
    Example instances of the patient profile representing a some typical
    person informations sets. The example data is based on test persons
    available in the Inera PU Test environment.
*/
Instance: PatientExample1
InstanceOf: SEBasePatient
Title: "PatientExample1"
Description: "Patient example"
Usage: #example
* meta.security[+] = $v3-ActCode#DEMO
* meta.security[+] = SecurityLabelCS#sekretessmarkering
* id = "PatientExample1"
* identifier[personnummer].value = "195009072553"
* name
  * extension[middleName].valueString = "Johansson"
  * extension[ownFamily].valueString = "Goode"
  * given[+] = "John"
  * given[+] = "Bob"
    * extension[nameQualifier].valueCode = #CL
  * use = #official
  * family = "Goode Johansson"
  * text = "John Bob Goode Johansson"
* gender = #male
* maritalStatus = SEBaseMaritalStatusCS#RP "Registrerad partner"
* birthDate = "1950-09-07"
* address
  * line = "2120 S Michigan Ave"
  * city = "Chicago"
  * postalCode = "60616"
  * country = "US"
  * extension[officialAddressType].valueCodeableConcept = $SCT#63401000052101 "utlandsadress"

/*
    Example patient Maria Ljungberg
    identified by SKV personnummer 196101182803
    folkbokförd län 14 med relationer mm
*/
Instance: PatientExample196101182803
InstanceOf: SEBasePatient
Title: "PatientExample196101182803"
Description: "Example patient identified by personnummer 196101182803."
Usage: #example
* id = "PatientExample196101182803"
* identifier[personnummer].value = "196101182803"
* name
  * given[+] = "Maria"
    * extension[nameQualifier].valueCode = #CL
  * given[+] = "Birgitta"
  * use = #official
  * family = "Ljungberg"
  * text = "Maria Ljungberg"
* gender = #female
* birthDate = "1961-01-18"
* address
  * line = "Vänervägen 7"
  * city = "VÄSTRA FRÖLUNDA"
  * postalCode = "42140"
  * extension[officialAddressType].valueCodeableConcept = $SCT#63381000052101 "folkbokföringsadress"
* maritalStatus = $HL7MS#M "Married"

/*
    Example patient Albertina VGR Hammar
    identified by SKV personnummer 189002029800
    has extension information middlename
    folkbokförd län 14 med relationer mm
*/
Instance: PatientExample189002029800
InstanceOf: SEBasePatient
Title: "PatientExample189002029800"
Description: "Example patient identified by personnummer 189002029800."
Usage: #example
* id = "PatientExample189002029800"
* identifier[personnummer].value = "189002029800"
* name
  * extension[middleName].valueString = "VGR"
  * extension[ownFamily].valueString = "Hammar"
  * given[+] = "Albertina"
  * use = #official
  * family = "VGR Hammar"
  * text = "Albertina VGR Hammar"
* gender = #female
* birthDate = "1890-02-02"
* address
  * line = "Haga Östergata"
  * city = "GÖTEBORG"
  * postalCode = "41301"
  * extension[officialAddressType].valueCodeableConcept = $SCT#63381000052101 "folkbokföringsadress"
* maritalStatus = $HL7MS#M "Married"

/*
    Example patient Katja Hennig
    identified by SKV personnummer 200302022389
    folkbokförd län 14,
    born abroad, immigrant, foreign citizenship
*/
Instance: PatientExample200302022389
InstanceOf: SEBasePatient
Title: "PatientExample200302022389"
Description: "Example patient identified by personnummer 200302022389."
Usage: #example
* id = "PatientExample200302022389"
* identifier[personnummer].value = "200302022389"
* name
  * given[+] = "Katja"
  * use = #official
  * family = "Hennig"
  * text = "Katja Hennig"
* gender = #female
* birthDate = "2003-02-02"
* address
  * line = "Södra vägen 5"
  * city = "Trollhättan"
  * postalCode = "46144"
  * extension[officialAddressType].valueCodeableConcept = $SCT#63381000052101 "folkbokföringsadress"
* maritalStatus = $HL7MS#U "Unmarried"

/*
    Example patient Andreas Ebers
    identified by SKV personnummer 199002222397
    folkbokförd län 14,
    unregistered as emigrated, foreign address (utlandsadress)
*/
Instance: PatientExample199002222397
InstanceOf: SEBasePatient
Title: "PatientExample199002222397"
Description: "Example patient identified by personnummer 199002222397."
Usage: #example
* id = "PatientExample199002222397"
* identifier[personnummer].value = "199002222397"
* name
  * given[+] = "Andreas"
  * use = #official
  * family = "Ebers"
  * text = "Andreas Ebers"
* gender = #male
* birthDate = "1990-02-22"
* address
  * line[+] = "Rosenheimer"
  * line[+] = "Van Kampenstraat"
  * line[+] = "7558 Hengelo"
  * country = "Nederländerna"
  * extension[officialAddressType].valueCodeableConcept = $SCT#63401000052101 "utlandsadress"
* maritalStatus = $HL7MS#U "Unmarried"

/*
    Example patient PROTECTED demographic information (sekretessmarkering)
    identified by SKV personnummer 200001252386

*/
Instance: PatientExample200001252386
InstanceOf: SEBasePatient
Title: "PatientExample200001252386"
Description: "Example patient identified by personnummer 200001252386."
Usage: #example
* meta.security[+] = $v3-ActCode#DEMO
* meta.security[+] = SecurityLabelCS#sekretessmarkering
* id = "PatientExample200001252386"
* identifier[personnummer].value = "200001252386"
* name
  * extension[middleName].valueString = "Skyddad uppgift"
  * given[+] = "Skyddad uppgift"
  * use = #official
  * family = "Skyddad uppgift"
  * text = "Skyddad uppgift"
* gender = #female
* birthDate = "2000-01-25"
* address
  * line[+] = "Förmedlingsuppdrag"
  * line[+] = "Box 2820"
  * city = "GÖTEBORG"
  * postalCode = "40320"
  * extension[officialAddressType].valueCodeableConcept = $SCT#63391000052104 "särskild postadress"

/*
    Example patient PROTECTED demographic information (skyddadFolkbokforing)
    identified by SKV personnummer 200001252386

*/
Instance: PatientExample189602029812
InstanceOf: SEBasePatient
Title: "PatientExample189602029812"
Description: "Example patient identified by personnummer 189602029812."
Usage: #example
* meta.security[+] = $v3-ActCode#DEMO
* meta.security[+] = SecurityLabelCS#skyddadFolkbokforing
* id = "PatientExample189602029812"
* identifier[personnummer].value = "189602029812"
* name
  * extension[middleName].valueString = "Skyddad uppgift"
  * given[+] = "Skyddad uppgift"
  * use = #official
  * family = "Skyddad uppgift"
  * text = "Skyddad uppgift"
* gender = #male
* birthDate = "2000-01-25"
* address
  * line[+] = "Förmedlingsuppdrag"
  * line[+] = "Box 2820"
  * city = "GÖTEBORG"
  * postalCode = "40320"
  * extension[officialAddressType].valueCodeableConcept = $SCT#63391000052104 "särskild postadress"

/*
    Example patient Nationellt Reservnummer
    identified by Nationellt reservnummer 98240301AA06
*/
Instance: PatientExample98240301AA06
InstanceOf: SEBasePatient
Title: "PatientExample98240301AA06"
Description: "Example patient identified by nationellt reservnummer 98240301AA06."
Usage: #example
* id = "PatientExample98240301AA06"
* identifier[nationelltReservnummer].value = "98240301AA06"
* name
  * extension[middleName].valueString = "Mellannamn"
  * extension[ownFamily].valueString = "Efternamn"
  * given[+] = "Förnamn"
  * use = #official
  * family = "Mellannamn Efternamn"
  * text = "Förnamn Mellannamn Efternamn"
* gender = #female
* birthDate = "2024-03-01"
* address[+]
  * line[+] = "C/O"
  * line[+] = "Adressrad 1 (Mer än 35 tecken)"
  * line[+] = "Adressrad 2 (Fler än 35 tecken)"
  * city = "Orten"
  * postalCode = "54300"
  * extension[officialAddressType].valueCodeableConcept = $SCT#63411000052104 "uppgiven adress"
* address[+]
  * line[+] = "Adressrad 1"
  * line[+] = "Adressrad 2"
  * line[+] = "Adressrad 3"
  * country = "DZ"
  * extension[officialAddressType].valueCodeableConcept = $SCT#63401000052101 "utlandsadress"

/*
    Example patient Nationellt Reservnummer
    identified by Nationellt reservnummer 98240301AA06
*/
Instance: PatientExample20210325K069
InstanceOf: SEBasePatient
Title: "PatientExample20210325K069"
Description: "Example patient identified by nationellt reservnummer 20210325K069."
Usage: #example
* id = "PatientExample20210325K069"
* identifier[nationelltReservnummer].value = "20210325K069"
* name
  * extension[middleName].valueString = "Mellannamn"
  * extension[ownFamily].valueString = "Efternamn"
  * given[+] = "Förnamn"
  * use = #official
  * family = "Mellannamn Efternamn"
  * text = "Förnamn Mellannamn Efternamn"
* gender = #female
* birthDate = "2021-03-25"
* address[+]
  * line[+] = "Careof"
  * line[+] = "Tillfällig adressrad"
  * city = "Orten"
  * postalCode = "54300"
  * extension[officialAddressType].valueCodeableConcept = $SCT#63411000052104 "uppgiven adress"
* address[+]
  * line[+] = "Adressrad 1"
  * line[+] = "Adressrad 2"
  * line[+] = "Adressrad 3"
  * country = "DZ"
  * extension[officialAddressType].valueCodeableConcept = $SCT#63401000052101 "utlandsadress"

/*
    Example patient identified by SKV samordningsnummer 196109732393
*/
Instance: PatientExample196109732393
InstanceOf: SEBasePatient
Title: "PatientExample196109732393"
Description: "Example patient identified by samordningsnummer 196109732393."
Usage: #example
* id = "PatientExample196109732393"
* identifier[samordningsnummer].value = "196109732393"
* name
  * given[+] = "Tom"
  * use = #official
  * family = "Smith"
  * text = "Tom Smith"
* gender = #male
* birthDate = "1961-09-13"
* address
  * line[+] = "SANDÅSGATAN 2"
  * city = "STOCKHOLM"
  * postalCode = "11327"
  * extension[officialAddressType].valueCodeableConcept = $SCT#63391000052104 "särskild postadress"
