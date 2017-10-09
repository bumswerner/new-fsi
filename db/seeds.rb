# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).







# generated objects Faculty


Faculty.create!(
  name: "Ingenieurwissenschaften",
  symbol: "IngWi",
  description: "Die Ausbildung von Ingenieuren an der htw saar wird von drei
                Kernelementen geprägt: Modernität aus Tradition, ein offenes
                Ohr für die Bedürfnisse der industriellen Praxis und eine 
                ausgeprägte Internationalität.
                Das macht uns stark und unverwechselbar.")
            
Faculty.create!(
  name: "Sozialwissenschaften",
  symbol: "SozWi",
  description: "Die Fakultät für Sozialwissenschaften organisiert sich in zwei
                Departments. Unter dem Dach eines \"Departments\" sind in der
                Fakultät für Sozialwissenschaften an der htw saar die zu einer
                Disziplin gehörenden Lehr- sowie Forschungsaktivitäten
                zusammengefasst.")
                  
Faculty.create!(
  name: "Wirtschaftswissenschaften",
  symbol: "WirtWi",
  description: "Um im Berufsleben in der heutigen Zeit – geprägt von Globalisierung,
                Interdisziplinarität und Internationalität  - erfolgreich bestehen
                zu können und sich lebenslang weiterbilden zu können, 
                möchten wir Ihnen als anwendungsorientierte Hochschule mehr mit 
                auf den Weg geben als reines Faktenwissen.")
                  
puts "Created 3 faculties"      

Studytype.create!(
  name: "Bachelor",
  symbol: "B",
  description: "Das Wort „Bachelor“ lässt sich auf das lateinische Wort „Bakkalaureus“ 
                zurückführen, was so viel wie „mit Lorbeeren gekrönt“ bedeutet.
                Schon im Mittelalter bezeichnete der Bakkalaureus den Inhaber
                des untersten akademischen Grades. Zu Beginn des 19. Jahrhunderts 
                verschwand dieser akademische Grad in Deutschland.
                An seine Stelle trat das Abitur.
                Zu Beginn des 21. Jahrhunderts führte die Bologna Reform den 
                Bachelor Abschluss in Deutschland im Rahmen des neuen
                mehrstufigen Bachelor-Master-Systems wieder ein.
                Ziel des Bologna Prozesses war es, das europäische Hochschulsystem
                zu vereinheitlichen, um eine bessere Vergleichbarkeit und mehr
                Austausch zu ermöglichen. Die Bachelor- und Masterabschlüsse 
                entsprechen mittlerweile in 47 Nationen einheitlichen Standards.")
                
Studytype.create!(
  name: "Master",
  symbol: "M",
  description: "Das Masterstudium dauert meistens zwei bis vier Semester und 
                ergänzt ein bereits absolviertes grundständiges Studium 
                (in aller Regel ein Bachelor-Studium). 
                Es kann der wissenschaftlichen Vertiefung des vorherigen Studiums
                dienen oder neue Wissensgebiete erschließen.
                Oft ist neben dem erfolgreichen Besuch von Lehrveranstaltungen
                auch eine Abschlussarbeit, die Master-Thesis, zu schreiben.
                In vielen Ländern (und teils auch Hochschulen innerhalb desselben Landes) 
                gibt es aber sehr unterschiedliche Mastervarianten, die in Ausrichtung,
                Dauer, Zulassungsvoraussetzungen und Aufbau variieren.")

puts "Created 2 studytypes"


Courseofstudy.create!(
  name: "Praktische Informatik",
  symbol: "PI",
  description: "Nach wie vor dringt die Informatik in immer mehr Lebensbereiche
                vor und erringt so eine stetig wachsende Bedeutung für unser 
                tägliches Leben. Neue computergestützte Technologien etablieren 
                sich und verursachen nachhaltige Veränderungen der Arbeitswelt
                und im privaten Bereich. Zur Umsetzung dieser Technologien 
                werden Fachkräfte nachgefragt, die sowohl ein fundiertes
                informatikspezifisches Wissen als auch Kenntnisse in 
                Betriebswirtschaft, Sprachen und Sozialkompetenz 
                (z.B. Teamorientierung) mitbringen. ",
  faculty_id: 1,
  studytype_id: 1)
  
Courseofstudy.create!(
  name: "Praktische Informatik",
  symbol: "PI",
  description: "Master-Absolventinnen und -Absolventen der Praktischen Informatik
                können beispielsweise in den Bereichen Softwareentwicklung, 
                Systemadministration, Projektleitung, Consulting, Training 
                und Integration zum Einsatz kommen. Gegenüber Bachelor-Absolventinnen 
                und -Absolventen unterscheidet sich jedoch ihre Einsatzart.",
  faculty_id: 1,
  studytype_id: 2)
  
Courseofstudy.create!(
  name: "Kommunikations Informatik",
  symbol: "KI",
  description: "Einerseits beherrschen unsere Absolventinnen und Absolventen die
                technischen Kommunikationsgeräte, die Daten in immer kürzerer 
                Zeit durch ständig verbesserte Adressierungsarten übertragen.
                Andererseits verfügen unsere Studierenden über eine Vielfalt 
                von Kenntnissen aus der Softwareentwicklung, um den Anforderungen
                von im Netz verteilt arbeitenden Prozessen gerecht zu werden.
                Hierzu nutzen Kommunikationsinformatiker/innen die gesamte 
                Bandbreite von Internet-Technologien bis Mobilfunk, die durch 
                das Wissen über Software-Engineering, Betriebssysteme, Datenbanken
                und Sicherheit flankiert wird.",
  faculty_id: 1,
  studytype_id: 1)
  
  
Courseofstudy.create!(
  name: "Wirtschaftsingenieurwesen",
  symbol: "WI",
  description: "Dadurch, dass sie die Welt immer aus zwei Blickwinkeln sehen,
                sind Wirtschaftsingenieure und -ingenieurinnen die Teamworker 
                unter den Ingenieuren! Weltweit agieren, aktiv die Zukunft vor 
                Ort mitgestalten  Sprachkenntnisse sind dabei genauso wichtig
                wie das Einfühlungsvermögen in fremde Kulturen und Mentalitäten.",
  faculty_id: 3,
  studytype_id: 1)  
  
Courseofstudy.create!(
  name: "Soziale Arbeit und Pädagogik der Kindheit",
  symbol: "SAPK",
  description: "Neben Bildungs- und Beratungsangeboten für Eltern und Familien
                sind spezifische Tätigkeitsfelder die Prävention, Intervention
                und Förderung von Kindern innerhalb institutioneller Einrichtungen
                für Bildung, Betreuung und Erziehung (KiTa, Krippe, Hort).
                Hinzu kommen Aufgaben der Leitung, Fachberatung und Qualitätsentwicklung 
                sowie der Kooperation und Vernetzung. Von besonderer Bedeutung
                ist der Übergang vom Kindergarten in die Grundschule und die
                sozialpädagogische Begleitung von Kindern, Lehrerinnen und
                Lehrern und Eltern in der Grundschule.",
  faculty_id: 2,
  studytype_id: 2)

puts "Created 5 Courseofstudy"

8.times do |number|
Category.create!(
  name: "Semester #{number+1}",
  symbol: "S #{number+1}",
  description: 'Ein Semester (lateinisch semestris ‚sechsmonatig‘, ‚halbjährig‘
                von sex ‚sechs‘ und mensis ‚monat‘[1]) ist eine seit dem 
                15. Jahrhundert gebräuchliche Bezeichnung für ein Studienhalbjahr
                an Universitäten bzw. Hochschulen oder Volkshochschulen (VHS).')
end

puts "Created 8 Categories of Semesters"

Category.create!(
  name: 'Wahlpflichtfächer',
  symbol: 'WFS',
  description: 'Wahlpflichtfach bedeutet, dass eine Student bzw. Schüler aus 
                einem Fachbereich oder Lehrangebot ein (oder mehrere) Fächer
                auswählen müssen.')
                
puts "Created 1 Category of Wahlpflichtfächer"


# id 1
Lecture.create!(
  name: "Mathematik 1",
  symbol: "Mfi 1",
  description: "Vermittlung von allgemeinen mathematischen Grundkenntnissen,
                von Grundkenntnissen der Algebra und Analysis, sicherem Umgang
                mit mathematischen Begriffen."
  )

# id 2
Lecture.create!(
  name: "Programmieren 1",
  symbol: "Prg 1",
  description: "Die Veranstaltung führt in die Grundlagen der objektorientierten
                Programmierung mit der Programmierpsrache Java ein. 
                Die Studierenden sollen am Ende des Semesters in der Lage sein,
                einfache Algorithmen und Datenstrukturen in Java umzusetzen.
                Sie sollen dabei die Prinzipien der objektorientierten Programmierung
                und die wichtigsten Sprachelemente von Java beherrschen."
  )
  
# id 3
Lecture.create!(
  name: "Betriebssystem Einführung",
  symbol: "BSE",
  description: "Effektiver, professioneller Umgang mit dem UNIX-Betriebssystem 
                im Allgemeinen und als Programmierumgebung im Besonderen.
                Inhalte: Grundlagen UNIX, Shell als Kommandointerpreter,
                Zugriffsrechte und Datensicherheit, Shellprogrammierung, 
                Shell-Skripte, Programmentwicklungswerkzeuge unter UNIX,
                UNIX Netzwerk-Utilities."
  )
  
# id 4
Lecture.create!(
  name: "Programmieren 2",
  symbol: "Prg 2",
  description: "Aufbauend auf dem Modul Programmierung 1 vertiefen die Studierenden
                ihre Kenntnisse und ihr Verständnis objektorientierter Programmierung.
                Nach erfolgreicher Absolvierung dieses Moduls können die Studierenden
                fortgeschrittene Konzepte objektorientierter Programmierung in Java 
                erklären und anwenden. Sie sind in der Lage, objektorientierte
                Lösungen zu entwerfen und umzusetzen. "
  )
  
# id 5
Lecture.create!(
  name: "Graphentheorie",
  symbol: "GT",
  description: "- Verstehen und Einsetzen  von Datenstrukturen
                - Grundlegende Algorithmen für Graphen kennen und analysieren können
                - Modellierung von Sachverhalten mittels Graphentheorie kennenlernen
                - Durchlaufprobleme in Graphen kennenlernen
                - Implementierungsprobleme verstehen"
  )
  
# id 6
Lecture.create!(
  name: "Theoretische Informatik",
  symbol: "TI",
  description: "Die Studierenden kennen die grundlegenden Begriffe und Konzepte der 
                theoretischen Informatik. Sie sind mit den Eigenschaften von Automaten
                und Sprachen vertraut und können bei praktischen Aufgabenstellungen die 
                geeigneten theoretischen Konzepte (z.B. endlicher Automat oder Kellerautomat) 
                auswählen und anwenden."
  )
  
# id 7
Lecture.create!(
  name: "Rechnerarchitektur",
  symbol: "RA",
  description: "Die  Studierenden  erlernen den Aufbau, die Organisation und die Arbeitsweise
                eines Digitalcomputers. Dazu werden die Architekturelemente eines Rechners auf
                Registerebene erarbeitet und zu einer Beispielarchitektur zusammengefügt. 
                Auch Techniken zur Leistungssteigerung wie Pipelining und Cache werden vorgestellt
                und die Interaktion mit Peripheriekomponenten wird erörtert. 
                Anhand von Fallbeispielen unterschiedlicher Prozessoren werden 
                die vorgestellten Architekturmerkmale verifiziert. "
  )
  
puts "Created 7 Lectures"

Assoziation.create!(
  code: "PIB125",
  instructor: "Herr Braun",
  category_id: 1,
  courseofstudy_id: 1,
  lecture_id: 1
  )
  
Assoziation.create!(
  code: "PIB120",
  instructor: "Herr Folz",
  category_id: 1,
  courseofstudy_id: 1,
  lecture_id: 2
  )
  
# Semester 1 - Praktische Informatik - BSE
Assoziation.create!(
  code: "PIB110",
  instructor: "Herr Pauly, Herr Pick",
  category_id: 1,
  courseofstudy_id: 1,
  lecture_id: 3
  )
  
# Semester 2 - Praktische Informatk - Programmieren 2
Assoziation.create!(
  code: "PIB210",
  instructor: "Herr Esch",
  category_id: 2,
  courseofstudy_id: 1,
  lecture_id: 4
  )
  
# Semester 2 - Praktische Informatk - Graphentheorie
Assoziation.create!(
  code: "PIB220",
  instructor: "Herr Berberisch",
  category_id: 2,
  courseofstudy_id: 1,
  lecture_id: 5
  )
  
# Semester 3 - Praktische Informatik - Theoretische Informatik
Assoziation.create!(
  code: "PIB345",
  instructor: "Herr Thomas Kretschmer",
  category_id: 3,
  courseofstudy_id: 1,
  lecture_id: 6
  )

# Semester 3 - Praktische Informatik - Rechnerarchitektur
Assoziation.create!(
  code: "PIB325",
  instructor: "Herr Leiner",
  category_id: 3,
  courseofstudy_id: 1,
  lecture_id: 7
  )
  
puts "Created 7 Assoziations"

# id 1
Section.create!(
  name: "Klausuren",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, 
                sed diam nonumy eirmod tempor invidunt ut labore et dolore
                magna aliquyam erat, sed diam voluptua. At vero eos et accusam et"
  )

# id 2
Section.create!(
  name: "Übungen",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, 
                sed diam nonumy eirmod tempor invidunt ut labore et dolore magna
                aliquyam erat, sed diam voluptua. At vero eos et accusam et justo"
  )

# id 3
Section.create!(
  name: "Skripte",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, 
                sed diam nonumy eirmod tempor invidunt ut labore et dolore magna
                aliquyam erat, sed diam voluptua. At vero eos et accusam et justo"
  )
  
# id 4
Section.create!(
  name: "Lösungen",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, 
                sed diam nonumy eirmod tempor invidunt ut labore et dolore magna
                aliquyam erat, sed diam voluptua. At vero eos et accusam et justo"
  )
  
puts "Created 4 Sections"

Connection.create!(
  name: "Klausuren --> Mathe 1",
  section_id: 1,
  lecture_id: 1
  )
  
Connection.create!(
  name: "Übungen --> Mathe 1",
  section_id: 2,
  lecture_id: 1
  )
  
Connection.create!(
  name: "Skripte --> Mathe 1",
  section_id: 3,
  lecture_id: 1
  )

Connection.create!(
  name: "Lösungen --> Mathe 1",
  section_id: 4,
  lecture_id: 1
  )
  
puts "Created 4 Connections"

Material.create!(
  name: "WS 2007",
  discription: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
                nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,
                sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.
                Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
  data: "http://fs-i.s3-eu-central-1.amazonaws.com/material/PI%20Bachelor/WS2007/Klausur.pdf",              
  section_id: 1,
  lecture_id: 6
  )
  
Material.create!(
  name: "WS 2008",
  discription: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
                nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,
                sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.
                Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
  data: "http://fs-i.s3-eu-central-1.amazonaws.com/material/PI%20Bachelor/WS2008/Klausur.pdf",
  section_id: 1,
  lecture_id: 6
  )
  
Material.create!(
  name: "WS 2009",
  discription: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
                nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,
                sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.
                Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
  data: "http://fs-i.s3-eu-central-1.amazonaws.com/material/PI%20Bachelor/WS2009/Klausur.pdf",
  section_id: 1,
  lecture_id: 6
  )
  
Material.create!(
  name: "WS 2010",
  discription: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
                nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,
                sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.
                Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
  data: "http://fs-i.s3-eu-central-1.amazonaws.com/material/PI%20Bachelor/WS2010/Klausur.pdf",
  section_id: 1,
  lecture_id: 6
  )
  
puts "Created 4 Materials"



# Noticationtypes and Notifications

Notificationtype.create!(
  name: "Neuigkeiten",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy
                eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.
                At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren,
                no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,
                consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et 
                dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo 
                dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus
                est Lorem ipsum dolor sit amet."
  )

Notificationtype.create!(
  name: "Veranstaltungen",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy
                eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.
                At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren,
                no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,
                consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et 
                dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo 
                dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus
                est Lorem ipsum dolor sit amet."
  )
  
Notificationtype.create!(
  name: "Termine",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy
                eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.
                At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren,
                no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,
                consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et 
                dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo 
                dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus
                est Lorem ipsum dolor sit amet."
  )
  
puts "3 Notificationtypes created"

Notification.create!(
  title: "Neu an der htw saar?",
  message: "Wir haben für Sie die wichtigsten Anlaufstellen und interessantesten 
            Angebote an der htw saar zusammen getragen, damit Sie sich in den ersten
            Tagen im Hochschuldschungel besser zurechtfinden. ",
  image: "https://cdn.pixabay.com/photo/2017/08/31/11/39/iceland-2700427__340.jpg",
  notificationtype_id: 1)
  
Notification.create!(
  title: "Projektleitertag der htw saar am 28. September 2017",
  message: "Am. 28. September 2017 findet zum 14. Mal der Projektleitertag an 
            der htw saar statt. Im Rahmen der Veranstaltung werden hochschulinterne
            Forschungsanträge für das Jahr 2018 präsentiert.",
  image: "https://cdn.pixabay.com/photo/2017/09/07/03/03/coast-2723729__340.jpg",
  notificationtype_id: 1)

Notification.create!(
  title: "Kinder-Ferien-Programm in den Herbstferien",
  message: "In den Herbstferien bietet die htw saar wieder gemeinsam mit dem NABU
            Saarland ein Ferienangebot für Grundschulkinder von Studierenden und 
            Beschäftigten im Wald am Campus Rotenbühl an. Viele spannende Aktivitäten 
            lassen keine Langeweile aufkommen. Die Anmeldung ist bis 1. Oktober 2017 möglich. ",
  image: "https://cdn.pixabay.com/photo/2017/09/03/17/26/woman-2711279__340.jpg",
  notificationtype_id: 1)


Notification.create!(
  title: "Immatrikulationsfeier der htw saar am 12. Oktober 2017",
  message: "Am 12. Oktober 2017 sind die neu eingeschriebenen Studierenden der Hochschule
            für Technik und Wirtschaft des Saarlandes (htw saar) in die Saarbrücker Congresshalle eingeladen,
            um den Studienanfang zu feiern und wichtige Informationen zum Studienablauf zu erhalten.
            Beginn ist um 9:00 Uhr.",
  image: "https://www.htwsaar.de/hochschule/veranstaltungen/immatrikulationsfeier/immatrikulationsfeier-2017/@@images/profilbild/profilsize",
  notificationtype_id: 1)
  
Notification.create!(
  title: "Jetzt Punkte für soziales Engagement sammeln",
  message: "Das Bonusheft sozial(und)kompetent zeigt vielfältige Möglichkeiten zur Mitarbeit, 
            Mitbestimmung und sozialem Engagement an der htw saar auf und möchte zu noch mehr sozialen 
            Tätigkeiten sowie noch stärkerer Ausübung von Ämtern innerhalb der Hochschule anregen.",
  image: "http://htwsaar.de/carousel_startseite/bonusheft/image",
  notificationtype_id: 1)
  
puts "5 Notification created"



# create Galleries and Images

Gallery.create!(
  name: "Mitglieder",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
                nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,
                sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.
                Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.")

Gallery.create!(
  name: "Sommerfest 2016",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
                nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,
                sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.
                Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.")
                
Gallery.create!(
  name: "Robonights 2017",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
                nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,
                sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.
                Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.")
                
puts "3 Galleries created"


Image.create!(
  name: "Pretzel",
  picture: "https://cdn.pixabay.com/photo/2017/09/17/22/01/pretzel-2759994__340.jpg",
  gallery_id: 1
  )
  
Image.create!(
  name: "Eagle",
  picture: "https://cdn.pixabay.com/photo/2017/09/04/20/52/bald-eagle-2715461__340.jpg",
  gallery_id: 1
  )

Image.create!(
  name: "Iceland",
  picture: "https://cdn.pixabay.com/photo/2017/08/31/11/39/iceland-2700427__340.jpg",
  gallery_id: 1
  )
  
Image.create!(
  name: "Coast",
  picture: "https://cdn.pixabay.com/photo/2017/09/07/03/03/coast-2723729__340.jpg",
  gallery_id: 1
  )
  
Image.create!(
  name: "Chess",
  picture: "https://cdn.pixabay.com/photo/2017/09/08/02/24/chess-2727443__340.jpg",
  gallery_id: 1
  )
  
Image.create!(
  name: "Cats eyes",
  picture: "https://cdn.pixabay.com/photo/2017/08/23/08/33/cats-eyes-2671903__340.jpg",
  gallery_id: 1
  )
  
Image.create!(
  name: "Coffee",
  picture: "https://cdn.pixabay.com/photo/2017/09/04/18/39/coffee-2714970__340.jpg",
  gallery_id: 1
  )
  
Image.create!(
  name: "Cross",
  picture: "https://cdn.pixabay.com/photo/2017/09/04/09/38/cross-2713356__340.jpg",
  gallery_id: 1
  )
  
Image.create!(
  name: "Woman",
  picture: "https://cdn.pixabay.com/photo/2017/09/03/17/26/woman-2711279__340.jpg",
  gallery_id: 1
  )

Image.create!(
  name: "Grapes",
  picture: "https://cdn.pixabay.com/photo/2017/09/04/22/16/grapes-2715711_960_720.jpg",
  gallery_id: 1
  )
puts "10 Images created"