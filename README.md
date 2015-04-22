# Docker-Eventstore

Eventstore database
--------------------------

heavily inspired by adbrowne/eventstore dockerfile (like in copy-paste)

run it like this docker run -d -p 2113:2113 -p 1113:1113 -v <host path>:/data/db <host path>:/data/logs mikaelkuhn/eventstore 


example: 

docker run -d -p 2113:2113 -p 1113:1113 -v ~/tmp/eventstore/db:/data/db -v ~/tmp/eventstore/logs:/data/logs mikaelkuhn/eventstore