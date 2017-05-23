# docker-apex
A simple docker container for packaging apex functions and deploying them to AWS Lambda.

_Repsitory Status_ : Prototype

## Why a docker container for deploying serverless stuff?

Amazon is currently supporting the python 3.6 runtime.  Which is great.
However, if you need a dependency like cryptography and you have something
that is built against that on OS X the binaries won't work when they get to Lambda.

So, enter our custom container purpose built with a lightweight footprint
for deploying all the serverless things.  

## How to get this image

__Options__

1. Build it yourself with `docker build`
2. Pull it from dockerhub `docker pull mozillaiam/docker-apex`

## License

Read the license here :

https://github.com/mozilla-iam/docker-apex/blob/master/LICENSE

## Contributing

Read our contributing instructions if you're thinking of making some changes:

https://github.com/mozilla-iam/docker-apex/blob/master/CONTRIBUTING.md
