#!/bin/sh
debian/setver
dpkg-buildpackage -A -us -uc
