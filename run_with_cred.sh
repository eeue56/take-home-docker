#!/bin/bash

export BASE_URL=localhost:8080

# Be sure to change these in your app!
export S3_AUTH=
export S3_SECRET=
export S3_BUCKET=
# Should be an email
export JOBS_CONTACT=
# Should be the master admin password
export AUTH_SECRET=

export LANG=en_US.UTF-8



#pushd ./bootstrapper
#elm make Bootstrapper.elm --yes --output ../instance/server/bootstrap.js
#popd
#node instance/server/bootstrap.js

elm-package install --yes

instance/server/run.sh
