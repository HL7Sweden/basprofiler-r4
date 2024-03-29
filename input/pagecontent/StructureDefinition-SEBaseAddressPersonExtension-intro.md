### How to express differend kinds of addresses
The different kinds of adresses that are used in the swedish context can be expressed with a combination of Address.use, Address.type and this extension. There are five kinds of addresses that should be expressed according to the table below. The parenthesis (PNR) and (SNR) mean that different values should be used for patients identified with Swedish personnummer (PNR) and Swedish samordningsnummer (SNR). 

<br />

| Type of address      | Address.use          | Address.type            | Extension value    |
|:--------------------:|:--------------------:|:-----------------------:|:------------------:|
| Folkbokföringsadress | *                    | *                       | SCT#63381000052101 |
| Särskild adress      | N/A (PNR) home (SNR) | postal (PNR) both (SNR) | SCT#63391000052104 |
| Utlandsadress        | home                 | *                       | SCT#63401000052101 |
| Tillfällig adress    | temp                 | *                       | N/A                |
| Uppgiven adress      | home                 | *                       | SCT#63411000052104 |