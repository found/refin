#!/bin/sh

set -x

echo "Running rake "
RAILS_ENV=production /usr/local/bin/rake deliver_receipt
echo "completed"
