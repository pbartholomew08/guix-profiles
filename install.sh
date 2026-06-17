
# Ensure $GUIX_EXTRA_PROFILES is set
set -u
: "${GUIX_EXTRA_PROFILES}"

CWD="$(dirname "$(readlink -f "$0")")"
echo ${CWD}

# Install base manifest in default profile
guix package --manifest=${CWD}/base-manifest.scm

# Base installs the Hack font, ensure cache is up to date (catches any other font installations)
fc-cache -rv
