#!/bin/sh

set -e

# SYNC linux_version_str
linux_version="6.5.7"

file=linux-$linux_version.tar.xz
wget "https://cdn.kernel.org/pub/linux/kernel/v6.x/$file"
mv $file linux.tar.xz
