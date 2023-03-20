
Invariant: personnummer-invariant
Description: "All identifiers that identifies as personnummer SHALL comply with the specified regex:  
^(18|19|[2-9]\\d)\\d{2}(0[1-9]|1[012])([0-2]\\d|3[0-1])\\d{4}"
Severity: #error
// Support dead patients who born in 19th century.
Expression: "$this.toString().matches('^(18|19|[2-9]\\\\d)\\\\d{2}(0[1-9]|1[012])([0-2]\\\\d|3[0-1])\\\\d{4}')"
XPath: "f:value"

Invariant: samordningsnummer-invariant
Description: "All identifiers that identifies as samordningsnummer SHALL comply with the specified regex: 
^(18|19|[2-9]\\d)\\d{2}(0[1-9]|1[012])([0-8]\\d|9[0-1])\\d{4}"
Severity: #error
// Support dead patients who born in 19th century.
Expression: "$this.toString().matches('^(18|19|[2-9]\\\\d)\\\\d{2}(0[1-9]|1[012])([0-8]\\\\d|9[0-1])\\\\d{4}')"
XPath: "f:value"

Invariant: nationelltReservnummer-invariant
Description: "All identifiers that identifies as nationellt reservnummer SHALL comply with the specified regex:  
^([0-9]{8})-?([A-Z&&[^IOQVW]]{2}[0-9]{2}|[A-Z&&[^IOQVW]]{3}[0-9]{1})$"
Severity: #error
// Support dead patients who born in 19th century.
Expression: "$this.toString().matches('^([0-9]{8})-?([A-Z&&[^IOQVW]]{2}[0-9]{2}|[A-Z&&[^IOQVW]]{3}[0-9]{1})$')"
XPath: "f:value"

Invariant: SLL-local-reservnummer-invariant
Description: "All identifiers that identifies as a SLL local reservnummer SHALL comply with the specified regex: 
99\\d{10}"
Severity: #error
// Support dead patients who born in 19th century.
Expression: "$this.toString().matches('99\\d{10}')"
XPath: "f:value"

Invariant: VGR-local-reservnummer-invariant
Description: "All identifiers that identifies as a Västra Götalandsregionen local reservnummer SHALL comply with the specified regex: 
\\d{8}[K|M|X](0[6-9]|[1-8][0-9])[0-9]"
Severity: #error
// Support dead patients who born in 19th century.
Expression: "$this.toString().matches('\\d{8}[K|M|X](0[6-9]|[1-8][0-9])[0-9]')"
XPath: "f:value"

Invariant: LiV-local-reservnummer-invariant
Description: "All identifiers that identifies as a Landstinget i Värmland local reservnummer SHALL comply with the specified regex: 
\\d{8}S[F|U|X|P|L]\\d([A-Z&&[^V]]|[1-9])"
Severity: #error
// Support dead patients who born in 19th century.
Expression: "$this.toString().matches('\\d{8}S[F|U|X|P|L]\\d([A-Z&&[^V]]|[1-9])')"
XPath: "f:value"

Invariant: IneraCareLink-local-reservnummer-invariant
Description: "All identifiers that identifies as a Inera Carelink local reservnummer SHALL comply with the specified regex: 
(1[7-9]|20)\\d{2}(0[1-9]|1[0-2])(3[2-9]|[4-5][0-9])\\d{4}"
Severity: #error
// Support dead patients who born in 19th century.
Expression: "$this.toString().matches('(1[7-9]|20)\\d{2}(0[1-9]|1[0-2])(3[2-9]|[4-5][0-9])\\d{4}')"
XPath: "f:value"

Invariant: Orebro-local-reservnummer-invariant
Description: "All identifiers that identifies as a Region Örebro län local reservnummer SHALL comply with the specified regex: 
(1[8-9]|2[0-1])[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|3[01])T[A-Z][0-9][A-J]"
Severity: #error
// Support dead patients who born in 19th century.
Expression: "$this.toString().matches('(1[8-9]|2[0-1])[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|3[01])T[A-Z][0-9][A-J]')"
XPath: "f:value"

Invariant: Skane-local-reservnummer-invariant
Description: "All identifiers that identifies as a Region Skåne local reservnummer SHALL comply with the specified regex: 
^(\\d{6}|\\d{8})[D|E|F][A-Z][0|1][A-Z]$"
Severity: #error
// Support dead patients who born in 19th century.
Expression: "$this.toString().matches('^(\\d{6}|\\d{8})[D|E|F][A-Z][0|1][A-Z]$')"
XPath: "f:value"

Invariant: Blekinge-local-reservnummer-invariant
Description: "All identifiers that identifies as a Region Blekinge local reservnummer SHALL comply with the specified regex: 
^(1[8-9]|2[0-1])[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|3[01])[A-Z]{2}[0-9][A-Z]$"
Severity: #error
// Support dead patients who born in 19th century.
Expression: "$this.toString().matches('^(1[8-9]|2[0-1])[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|3[01])[A-Z]{2}[0-9][A-Z]$')"
XPath: "f:value"

Invariant: Vasternorrland-local-reservnummer-invariant
Description: "All identifiers that identifies as a Region Västernorrland local reservnummer SHALL comply with the specified regex: 
^(1[8-9]|2[0-1])[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|3[01])[0-9]{3}R$"
Severity: #error
// Support dead patients who born in 19th century.
Expression: "$this.toString().matches('^(1[8-9]|2[0-1])[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|3[01])[0-9]{3}R$')"
XPath: "f:value"

Invariant: Sormland1-local-reservnummer-invariant
Description: "All identifiers that identifies as a Region Sörmland 1 local reservnummer SHALL comply with the specified regex: 
^(1[8-9]|2[0-1])[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|3[01])[A-Z]{2}[0-9][A-Z]$"
Severity: #error
// Support dead patients who born in 19th century.
Expression: "$this.toString().matches('^(1[8-9]|2[0-1])[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|3[01])[A-Z]{2}[0-9][A-Z]$')"
XPath: "f:value"

Invariant: Sormland2-local-reservnummer-invariant
Description: "All identifiers that identifies as a Region Sörmland 2 local reservnummer SHALL comply with the specified regex: 
^(18500101|18600101)[MNKP](0{2}[1-9]|[0-9][1-9][0-9]|[1-9][0-9][0-9])$"
Severity: #error
// Support dead patients who born in 19th century.
Expression: "$this.toString().matches('^(18500101|18600101)[MNKP](0{2}[1-9]|[0-9][1-9][0-9]|[1-9][0-9][0-9])$')"
XPath: "f:value"