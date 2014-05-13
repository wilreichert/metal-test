#!/bin/bash

# cleanup old data
rm -rf clients cookbooks machines nodes
export MACHINES_DIR="$(pwd -P)/machines"

# grab cooks
berks vendor cookbooks

# run
chef-client --config-file-jail . -c .chef/client.rb -z -r metal-test::test
