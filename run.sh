#!/usr/bin/env bash
set -e

docker run --rm -it \
    -v ${PWD}:/data \
	-e EMAIL=$NAMECHEAP_EMAIL \
	-e LEXICON_NAMECHEAP_AUTH_USERNAME=$LEXICON_NAMECHEAP_USERNAME \
        -e LEXICON_NAMECHEAP_AUTH_TOKEN=$LEXICON_NAMECHEAP_TOKEN \
        -e LEXICON_NAMECHEAP_AUTH_CLIENT_IP=$LEXICON_NAMECHEAP_AUTH_CLIENT_IP \
	streisandjumpcut/lexicon-letsencrypt-streisand:latest \
	$@
