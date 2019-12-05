# Arbetsmaterial för sekretessmarkering

https://confluence.cgiostersund.se/pages/viewpage.action?pageId=184883694#id-4.0SAD-Personuppgiftstj%C3%A4nsten-Markeringf%C3%B6rSkyddadfolkbokf%C3%B6ring

>#### 7.9.5. Sekretessmarkering
>
>Uppgifter hos SKV kan ha skyddsbehov och kan ha tillförts en markering för sekretess. När denna markering är satt hanterar personuppgiftstjänsten data kopplat till individen på ett skyddat sätt. Data filtreras innan utlämning till tjänstekonsument. Se detaljerad information i TKB V3 [T1].
>
>#### 7.9.6. Markering för Skyddad folkbokföring
>Uppgifter hos SKV kan ha starkare skyddsbehov än den som Sekretessmarkering ger. Flaggan för Skyddad folkbokföring ersätter begreppet kvarskrivning. Personuppgiftstjänsten filtrerar uppgifter på samma sätt som den gör för poster som är Sekretessmarkerade.

https://www.skatteverket.se/foretagochorganisationer/myndigheter/informationsutbytemellanmyndigheter/navethamtauppgifteromfolkbokforing/nyheter/2019/nyheter/skyddadfolkbokforingaviserastillsammansmedsekretessmarkering.5.32a87cee16d2b11f30e847.html

>#### Skyddad folkbokföring aviseras tillsammans med sekretessmarkering
>
>Eftersom alla inte kan ta emot uppgifterna enligt det nya systemet kommer vi att återgå till sekretessmarkering tillsammans med skyddad folkbokföring. Det innebär att ingen person kommer att aviseras ut enbart med beteckningen skyddad folkbokföring.

https://skatteverket.se/privat/folkbokforing/skyddadepersonuppgifter/hanteringavsekretessmarkeradepersonuppgifter.4.18e1b10334ebe8bc80002541.html

>Personuppgifter, inklusive markering för skyddad folkbokföring och sekretessmarkering, aviseras från Skatteverket till andra myndigheter.
>
>#### Markering för skyddad folkbokföring
>När hotbilden mot en person är mycket stark kan personen få skyddad folkbokföring enligt 16 § FOL. En markering för skyddad folkbokföring registreras då i folkbokföringsdatabasen. Personen är folkbokförd på en annan folkbokföringsort än där personen är bosatt. Någon bostadsadress registreras inte utan endast en särskild postadress. Den särskilda postadressen är en boxadress som går till ett skattekontor.
>
>#### Sekretessmarkering
>Den som inte uppfyller kraven för att få en markering för skyddad folkbokföring kan i vissa fall få en sekretessmarkering i stället. En sekretessmarkering är en varningssignal om behovet av att göra en noggrann skadeprövning enligt 22 kap. 1 § OSL när någon begär att få ut en
>sekretessmarkerad uppgift, se nedan. Det framgår inte av själva markeringen vilken uppgift om personen som kan vara skyddsvärd.
>
>#### Viktigt för myndigheter att tänka på för att systemet med markering för skyddad folkbokföring och sekretessmarkering ska fungera
>**Beakta särskilt hanteringen av skyddade personuppgifter vid utveckling av IT-stöd**
>Vid utveckling av IT-verksamhet eftersträvas alltmer system med enhetliga rutiner och med små möjligheter till avvikelser. För att inte tappa kontrollen över skyddade personuppgifter bör behandlingen av dessa särskilt beaktas vid systemutvecklingen.
>**Observera att det är viktigt att det görs skillnad på vilka uppgifter som har markering för skyddad folkbokföring och vilka uppgifter som har sekretessmarkering.**
>
>#### För en handläggare som har behörighet att ta del av skyddade personuppgifter bör det på ett tydligt och enhetligt sätt framgå att uppgifterna är markerade för skyddad folkbokföring eller sekretessmarkerade
>Det är risk för att handläggare med tillgång till skyddade personuppgifter missar vilka uppgifter som är markerade för skyddad folkbokföring eller sekretessmarkerade, om de inte är tydligt utmärkta

https://confluence.cgiostersund.se/display/PU/SAD

>#### Sekretessmarkering
>Uppgifter hos SKV kan ha skyddsbehov och kan ha tillförts en markering för sekretess. När denna markering är satt hanterar personuppgiftstjänsten data kopplat till individen på ett skyddat sätt. Data filtreras innan utlämning till tjänstekonsument. Se detaljerad information i TKB V3 [T1].
>
>#### Markering för Skyddad folkbokföring
>Uppgifter hos SKV kan ha starkare skyddsbehov än den som Sekretessmarkering ger. Flaggan för Skyddad folkbokföring ersätter begreppet kvarskrivning. Personuppgiftstjänsten filtrerar uppgifter på samma sätt som den gör för poster som är Sekretessmarkerade.

https://confluence.cgiostersund.se/display/PU/Funktionalitet+och+teknik

>#### 1.20. Fråga: hur hanteras personer med skyddad identitet när personen har flera olika personidentifierare?
>· Personuppgiftstjänsten kontrollerar med hjälp av information från Skatteverkets Navet om personen har fått en sekretessmarkering i folkbokföringen. I dessa fall lämnas inte känsliga uppgifter ut vid uppslag mot Personuppgiftstjänsten och det signaleras till det verksamhetssystem som används för uppslag att sekretess gäller kring denna person.
>· Från och med Personuppgiftstjänst 4.0 kommer det att vara möjligt att få ut kompletta uppgifter även för personer med sekretessmarkering, om det finns ett verksamhetsbehov.
>
>#### 1.21. Fråga: enligt tjänstekontraktsbeskrivningen returneras länskod för sekretessmarkerade personer, blir det 99 när en sekretessmarkerad person flyttar till annat län?
>· Nej, Personuppgiftstjänsten returnerar 01-25 som länskod. 99 aviseras visserligen till den region som som personen flyttar ifrån men eftersom Personuppgiftstjänsten får alla aviseringar så kommer det i slutändan bli 01-25.
>
>#### 1.22. Fråga: har fall med nytt personnummer, efter t.ex. byte av juridiskt kön, beaktats? Kan även vara kombinerat med skyddad identitet.
>· Via Skatteverkets Navet får Personuppgiftstjänsten uppgift om ev. byten av personnummer, tidigare personnummer blir då ett s k hänvisningsnummer kopplat till personens nya huvudidentitet. Personuppgiftstjänsten speglar alltså här uppgifterna i folkbokföringen.
>· Finns en sekretessmarkering i folkbokföringen för personen slår den också till i Personuppgiftstjänsten.
>· Från och med Personuppgiftstjänst 4.0 kommer det att vara möjligt att få ut kompletta uppgifter även för personer med sekretessmarkering, om det finns ett verksamhetsbehov.
>· Noteras kan att vid särskilt allvarliga hot kan person få byta till fingerade personuppgifter med nytt personnummer. I dessa sällsynta fall finns ingen information om bytet i vare sig Skatteverkets Navet eller i Personuppgiftstjänsten.’

https://bitbucket.org/rivta-domains/riv.strategicresourcemanagement.persons.person/raw/3.2.1/docs/TKB_strategicresourcemanagement_persons_person.docx

>#### Sekretessmarkerade personuppgifter samt Skyddad folkbokföring
>Personuppgifter kan bli sekretessmarkerade enligt ett regelverk som Skatteverket ansvarar för, vilket då alltid framgår när uppgiften hämtas via tjänster i denna domän, s.k. sekretessmarkering. En person kan även få skyddade folkbokföringsuppgifter (gäller från 2019-01-01). Detta är ett något högre skydd än sekretessmarkering och anges med ett separat attribut. Grundregeln är att i de fall personposten är sekretessmarkerad alternativt skyddad
>folkbokföring, utelämnas (”blankas”) alla uppgifter i svaret utom personidentiteten i sig samt personens namn och län (se kapitel 8). Det framgår även att posten är sekretessmarkerad. För åtkomst till sekretessmarkerade uppgifter/skyddad folkbokföring används separata s.k. ”unrestricted-kontrakt”. Se mer under tjänstekontrakt.’
>
>**urn:riv:strategicresourcemanagement:persons:person:3:ContactInformationRecordType**
>Uppgifter om personens kontaktuppgifter och kontaktpersoner
>
>Namn | Datatyp | Beskrivning | Kardinalitet
>--- | --- | --- | ---
>protectedPersonIndicator | xs:Boolean | Uppgift om sekretessmarkering. Om denna är "true" returneras inga kontaktuppgifter. | 1
>protectedPopulationRecord | xs:Booleand | Uppgift om Skyddad folkbokföring. Om denna är ”true” returneras inga kontaktuppgifter | 0..1
>
>**urn:riv:strategicresourcemanagement:persons:person:3:PersonRecordType**
>Grupp för personpost, se klass Person [R3]
>
>Namn | Datatyp | Beskrivning | Kardinalitet
>--- | --- | --- | ---
>protectedPersonIndicator | xs:Boolean | Uppgift om sekretessmarkering. | 1
>protectedPopulationRecord | xs:Boolean | Uppgift om Skyddad folkbokföring | 0..1
>
>#### Aktuella profiler
>
>Det finns 5st aktuella profiler, det är dock förberett för fler profiler. Vilken av dem man vill ha tillbaka i svar anger man i anropet. Man ska inte hämta mer data än man behöver.
>
>* Profil 1: Basinformation om identiteten, namn, inklusive kopplade identiteter
>* Profil 2: Profil 1 + adress & folkbokförings och vissa uppgifter kring reservidentiteter.
>* Profil 3: Profil 2 + kontaktinformation och aktör
>* Profil 4: Profil 3 + all aktuell informationen kring personen (födelse, civilstatus etc)
>* Profil 5: Profil 4 + historisk information från SKV
>
>Detaljerad information om vad profilerna innehåller framgår av tabellen nedan. Poster markerade med (*) är enbart aktuella för personidentiteter av typen reservidentitet (NRID, LRID). **Notera att när protectedPersonIndicator är satt (sekretessmarkerad personpost), levereras endast uppgifter i enlighet med Profil 1, oavsett efterfrågad profil för de Get och Search-kontrakt som ej är av typen unrestricted**

