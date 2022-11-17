# basprofiler-r4
Repository for suggested Swedish base profiles withing the r4 release

CI Build: http://build.fhir.org/ig/HL7Sweden/basprofiler-r4/


Release process
Prereq: dependent repos has been cloned into /root

1. Create release branch for version
2. Change version and status in sushi-config.yaml
3. Update publication-request.json in /root
4. Run "npm run build" and "npm run publish"
5. Test by "npm run serve"
- If something goes wrong - delete version folder in /published and delete version in package-list.json
6. Upload published/base and published/*.xml to webserver root
7. Commit and push to origin
8. Checkout master
9. Change version and status in sushi-config.yaml
