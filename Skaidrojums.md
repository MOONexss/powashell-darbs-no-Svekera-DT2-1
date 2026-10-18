 Praktiskais darbs "PowerShell skriptēšana" - Skaidrojumi

1. uzdevums: Sistēmas apraksts
Šis skripts vienā blokā apkopo galveno sistēmas informāciju, iegūstot datora un operētājsistēmas datus, pašreizējo PowerShell versiju, laiku un aktīvo procesu skaitu, parādot rezultātu saraksta formātā.

3. uzdevums: Servisu skaitīšana
Skripts izmanto ciklu, lai secīgi pārbaudītu katra sistēmas servisa statusu, saskaitot strādājošos un apturētos servisus, un iegūst to kopējo summu. Summa vienmēr precīzi sakrīt ar kopējo servisu skaitu, jo katrs instalētais serviss atrodas vai nu ieslēgtā, vai apturētā (vai citā pamata) stāvoklī.

5. uzdevums: Kļūdas sistēmas žurnālā
Skripts atlasa sistēmas žurnāla kļūdu ierakstus par pēdējām 48 stundām, izmantojot laika filtru, un nosaka visbiežāk sastopamo kļūdu avotu. Analizējot šos datus, var secināt par iekārtas vai programmatūras stabilitāti un biežākajiem incidentiem pēdējā laikā.

6. uzdevums: Draiveri, kas nav Microsoft
Skripts atrod visus draiverus, kuru piegādātājs nav Microsoft, saglabā tos CSV failā un teksta failā ieraksta kopējo atrasto rindu skaitu. Izvēloties konkrētu draiveri, var redzēt, ka tas nodrošina aparatūras (piemēram, videokartes vai tīkla kartes) darbību.

7. uzdevums: Diska vieta un brīdinājumi
Šis skripts caurstaigā visus failu sistēmas diskus, aprēķina kopējo un brīvo vietu gigabaitos, kā arī salīdzina to ar norādīto robežvērtību, izvedot brīdinājumu ekrānā, ja brīvas vietas ir mazāk par noteikto apjomu.

8. uzdevums: Divi ceļi, viens rezultāts
Skripts izmanto divas dažādas komandas (`Get-Service` un `Get-CimInstance`), lai iegūtu informāciju par Spooler servisu, un ar `Measure-Command` izmēra abu metožu izpildes laiku milisekundēs. Salīdzinot rezultātus, var redzēt, kura metode šajā datorā strādā ātrāk.

9. uzdevums: Kurš lietotājs palaiž procesu
Skripts mēģina katram aktīvajam procesam noskaidrot tā palaidēju. Parastā PowerShell sesijā bez administratora tiesībām daļai sistēmas procesu īpašnieku iegūšana nav iespējama drošības ierobežojumu dēļ, tādēļ skripts apstrādā šo kļūdu ar `try-catch` bloku, lai sistēma turpinātu darboties arī tad, ja pieeja liegta.

10. uzdevums: Kopsavilkums
Skripts apkopo datus no pirmā, trešā, piektā un septītā uzdevuma (procesu skaitu, aktīvo un apturēto servisu skaitu, kļūdu ierakstus un brīvo diska vietu). Skaitļi atšķiras no iepriekšējo uzdevumu atsevišķajām izvadēm, jo sistēmas stāvoklis (procesi, servisi un log faili) nepārtraukti mainās reāllaikā starp skriptu palaišanas brīžiem.