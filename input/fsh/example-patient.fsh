/*
    Example instances of the patient profile representing a some typical
    person informations sets. The example data is based on test persons 
    available in the Inera PU Test environment.
*/
Instance: PatientExample1
InstanceOf: SEBasePatient
Description: "Patient example"
* meta.security[0] = $ACTCODE#DEMO
* meta.security[1] = SecurityLabelCS#sekretessmarkering
* id = "PatientExample1"
* identifier[personnummer].value = "195009072553"
* name[0].use = #official
* name[0].family = "Goode Johansson"
* name[0].given[0] = "John"
* name[0].given[1] = "Bob"
* name[0].given[0].extension[nameQualifier].valueCode = #CL
* name[0].extension[middleName].valueString = "Johansson"
* name[0].extension[ownFamily].valueString = "Goode"
* name[0].text = "John Bob Goode Johansson"
* gender = #male
* maritalStatus = SEBaseMaritalStatusCS#RP "Registrerad partner"
* birthDate = "1950-09-07"
* address.line = "2120 S Michigan Ave"
* address.city = "Chicago"
* address.postalCode = "60616"
* address.country = "US"
* address.extension[officialAddressType].valueCodeableConcept = $SCT#63401000052101 "utlandsadress"

/* 
    Example patient Maria Ljungberg
    identified by SKV personnummer 196101182803
    folkbokförd län 14 med relationer mm
*/
Instance: PatientExample196101182803
InstanceOf: SEBasePatient
Description: "Example patient identified by personnummer 196101182803."
Usage: #example
* id = "PatientExample196101182803"
* identifier[personnummer].value = "196101182803"
* name[0].use = #official
* name[0].family = "Ljungberg"
* name[0].given[0] = "Maria"
* name[0].given[1] = "Birgitta"
* name[0].given[0].extension[nameQualifier].valueCode = #CL
* name[0].text = "Maria Ljungberg"
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
Description: "Example patient identified by personnummer 189002029800."
Usage: #example
* id = "PatientExample189002029800"
* identifier[personnummer].value = "189002029800"
* name[0].use = #official
* name[0].family = "VGR Hammar"
* name[0].given[0] = "Albertina"
* name[0].extension[middleName].valueString = "VGR"
* name[0].extension[ownFamily].valueString = "Hammar"
* name[0].text = "Albertina VGR Hammar"
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
Description: "Example patient identified by personnummer 200302022389."
Usage: #example
* id = "PatientExample200302022389"
* identifier[personnummer].value = "200302022389"
* name[0].use = #official
* name[0].family = "Hennig"
* name[0].given[0] = "Katja"
* name[0].text = "Katja Hennig"
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
Description: "Example patient identified by personnummer 199002222397."
Usage: #example
* id = "PatientExample199002222397"
* identifier[personnummer].value = "199002222397"
* name[0].use = #official
* name[0].family = "Ebers"
* name[0].given[0] = "Andreas"
* name[0].text = "Andreas Ebers"
* gender = #male
* birthDate = "1990-02-22"
* address
  * line[0] = "Rosenheimer"
  * line[1] = "Van Kampenstraat"
  * line[2] = "7558 Hengelo"
  * country = "Nederländerna"
  * extension[officialAddressType].valueCodeableConcept = $SCT#63401000052101 "utlandsadress"
* maritalStatus = $HL7MS#U "Unmarried"

/* 
    Example patient PROTECTED demographic information (sekretessmarkering)
    identified by SKV personnummer 200001252386
     
*/
Instance: PatientExample200001252386
InstanceOf: SEBasePatient
Description: "Example patient identified by personnummer 200001252386."
Usage: #example
* meta.security[0] = $ACTCODE#DEMO
* meta.security[1] = SecurityLabelCS#sekretessmarkering
* id = "PatientExample200001252386"
* identifier[personnummer].value = "200001252386"
* name[0].use = #official
* name[0].family = "Skyddad uppgift"
* name[0].extension[middleName].valueString = "Skyddad uppgift"
* name[0].given[0] = "Skyddad uppgift"
* name[0].text = "Skyddad uppgift"
* gender = #female
* birthDate = "2000-01-25"
* address
  * line[0] = "Förmedlingsuppdrag"
  * line[1] = "Box 2820"
  * city = "GÖTEBORG"
  * postalCode = "40320"
  * extension[officialAddressType].valueCodeableConcept = $SCT#63391000052104 "särskild postadress"

/* 
    Example patient PROTECTED demographic information (skyddadFolkbokforing)
    identified by SKV personnummer 200001252386
     
*/
Instance: PatientExample189602029812
InstanceOf: SEBasePatient
Description: "Example patient identified by personnummer 189602029812."
Usage: #example
* meta.security[0] = $ACTCODE#DEMO
* meta.security[1] = SecurityLabelCS#skyddadFolkbokforing
* id = "PatientExample189602029812"
* identifier[personnummer].value = "189602029812"
* name[0].use = #official
* name[0].family = "Skyddad uppgift"
* name[0].extension[middleName].valueString = "Skyddad uppgift"
* name[0].given[0] = "Skyddad uppgift"
* name[0].text = "Skyddad uppgift"
* gender = #male
* birthDate = "2000-01-25"
* address
  * line[0] = "Förmedlingsuppdrag"
  * line[1] = "Box 2820"
  * city = "GÖTEBORG"
  * postalCode = "40320"
  * extension[officialAddressType].valueCodeableConcept = $SCT#63391000052104 "särskild postadress"

/* 
    Example patient Nationellt Reservnummer
    identified by Nationellt reservnummer 98240301AA06
*/
Instance: PatientExample98240301AA06
InstanceOf: SEBasePatient
Description: "Example patient identified by nationellt reservnummer 98240301AA06."
Usage: #example
* id = "PatientExample98240301AA06"
* identifier[nationelltReservnummer].value = "98240301AA06"
* name[0].use = #official
* name[0].family = "Mellannamn Efternamn"
* name[0].given[0] = "Förnamn"
* name[0].text = "Förnamn Mellannamn Efternamn"
* name[0].extension[middleName].valueString = "Mellannamn"
* name[0].extension[ownFamily].valueString = "Efternamn"
* gender = #female
* birthDate = "2024-03-01"
* address[0]
  * line[0] = "C/O"
  * line[1] = "Adressrad 1 (Mer än 35 tecken)"
  * line[2] = "Adressrad 2 (Fler än 35 tecken)"
  * city = "Orten"
  * postalCode = "54300"
  * extension[officialAddressType].valueCodeableConcept = $SCT#63411000052104 "uppgiven adress"
* address[1]
  * line[0] = "Adressrad 1"
  * line[1] = "Adressrad 2"
  * line[2] = "Adressrad 3"
  * country = "DZ"
  * extension[officialAddressType].valueCodeableConcept = $SCT#63401000052101 "utlandsadress"

/* 
    Example patient Nationellt Reservnummer
    identified by Nationellt reservnummer 98240301AA06
*/
Instance: PatientExample20210325K069 
InstanceOf: SEBasePatient
Description: "Example patient identified by nationellt reservnummer 20210325K069."
Usage: #example
* id = "PatientExample20210325K069"
* identifier[nationelltReservnummer].value = "20210325K069"
* name[0].use = #official
* name[0].family = "Mellannamn Efternamn"
* name[0].given[0] = "Förnamn"
* name[0].text = "Förnamn Mellannamn Efternamn"
* name[0].extension[middleName].valueString = "Mellannamn"
* name[0].extension[ownFamily].valueString = "Efternamn"
* gender = #female
* birthDate = "2021-03-25"
* address[0]
  * line[0] = "Careof"
  * line[1] = "Tillfällig adressrad"
  * city = "Orten"
  * postalCode = "54300"
  * extension[officialAddressType].valueCodeableConcept = $SCT#63411000052104 "uppgiven adress"
* address[1]
  * line[0] = "Adressrad 1"
  * line[1] = "Adressrad 2"
  * line[2] = "Adressrad 3"
  * country = "DZ"
  * extension[officialAddressType].valueCodeableConcept = $SCT#63401000052101 "utlandsadress"

/* 
    Example patient identified by SKV samordningsnummer 196109732393   
*/
Instance: PatientExample196109732393
InstanceOf: SEBasePatient
Description: "Example patient identified by samordningsnummer 196109732393."
Usage: #example
* id = "PatientExample196109732393"
* identifier[samordningsnummer].value = "196109732393"
* name[0].use = #official
* name[0].family = "Smith"
* name[0].given[0] = "Tom"
* name[0].text = "Tom Smith"
* gender = #male
* birthDate = "1961-09-13"
* address
  * line[0] = "SANDÅSGATAN 2"
  * city = "STOCKHOLM"
  * postalCode = "11327"
  * extension[officialAddressType].valueCodeableConcept = $SCT#63391000052104 "särskild postadress"
