# basprofiler-r4
Repository for suggested Swedish base profiles withing the r4 release

CI Build: http://build.fhir.org/ig/HL7Sweden/basprofiler-r4/


Release process

Create release branch for version
Change version and status in sushi-config.yaml
Update publication-request.json in /root
Run "npm run build" and "npm run publish"
Test by "npm run serve"
5.a If something goes wrong - delete version folder in /published and delete version in package-list.json
Upload published/base and published/*.xml to webserver root
Commit and push to origin
Checkout master
Change version and status in sushi-config.yaml
