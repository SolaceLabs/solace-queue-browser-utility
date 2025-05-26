# Solace Queue Browser

## Overview

> This is a open-source non-production tool that is not officially supported under Solace Customer Support policy.

This is meant to provide Solace Queue Browsing capabilities easily:
- List messages in queue
- Browse (Peek) message payload content without consuming message from the queue
- Remove message from the queue

The application is intended to be able to run without a web server (with constraints) - refer to section below for explanation.

## Installation

1. Checkout this code repository.
2. Download Solace Javascript (Browser) API from [here](https://solace.com/downloads/).
   - Place `solclient-debug.js` or `solclient.js` in `www/js` folder.
3. Either open `www/utility.html` with a browser or run the docker container `docker-compose up -d`.

## Constraints

1. If you don't have an internet connection or internet access to https://htmx.org/, please complete Step #3.
2. VPN/Queue listing requires SEMP login credentials (a.k.a adminstrator / operator login credentials).
3. Features requiring SEMP login credentials require either:
   - (Not available yet) Target Solace PubSub+ Broker must enable [Cross Origin Resource Sharing (CORS)](https://docs.solace.com/Services/Managing-Services.htm#managing-cross-origin-resource-sharing), or
   - Tool to be deployed and run via Docker container

## References
- https://docs.solace.com/API/Messaging-APIs/JavaScript-API/js-home.htm
- https://tutorials.solace.dev/javascript/
- https://docs.solace.com/API-Developer-Online-Ref-Documentation/js/index.html
- https://github.com/SolaceSamples/solace-samples-javascript
