#!/bin/sh -e

BASE="$( cd "$(dirname "$0")" ; pwd -P )"
echo "Building in ${BASE}"

docker run \
-v "${BASE}/src:/srv/src:Z" \
-v "${BASE}/zips:/srv/zips:Z" \
-v "${BASE}/logs:/srv/logs:Z" \
-v "${BASE}/ccache:/srv/ccache:Z" \
-e "BRANCH_NAME=v1-nougat" \
-e "DEVICE_LIST=hammerhead" \
-e "CUSTOM_PACKAGES='MuPDF GmsCore GsfProxy FakeStore com.google.android.maps.jar Telegram Signal Mail BlissLauncher BlissIconPack MozillaNlpBackend OpenWeatherMapWeatherProvider AccountManager MagicEarth OpenCamera eDrive Weather Notes Tasks NominatimNlpBackend Light DroidGuard OpenKeychain QKSMS Bromite BromiteWebView LibreOfficeViewer'" \
-e "SIGNATURE_SPOOFING=restricted" \
-e "OTA_URL=https://ota.ecloud.global/api" \
-e "REPO=https://gitlab.e.foundation/e/os/android.git" \
registry.gitlab.e.foundation:5000/e/os/docker-lineage-cicd:latest
