### webrockit-phantomas

This package fetches phantomas and builds a phantomas bundle package, staging the base path to /opt/phantomas/collectoids/phantomas/.  The package webrockit-phantomas must exist on a webrockit poller (Sensu client).

### To build

   - run ./buildme.sh

This will download the phantomas code from the official distribution site, and re-package it into the /opt/phantomas/collectoids/phantomas/ path.  The final package is located under ./finalpkg/

### License
   webrockit-phantomas is released under the MIT license, and bundles other liberally licensed OSS components [License](LICENSE.txt)  
   [Third Party Software](third-party.txt)
