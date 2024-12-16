set -euxo pipefail
find .
# Make a few assertions about the generated site
test -f site_complex/site_complex/index.html
test -f site_complex/site_complex/index.xml