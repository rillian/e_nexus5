sudo docker run \
-v "/srv/e/src:/srv/src:delegated" \
-v "/srv/e/zips:/srv/zips:delegated" \
-v "/srv/e/logs:/srv/logs:delegated" \
-v "/srv/e/ccache:/srv/ccache:delegated" \
-e "BRANCH_NAME=v1-nougat" \
-e "DEVICE_LIST=<my-device>" \
-e "CUSTOM_PACKAGES='MuPDF GmsCore GsfProxy FakeStore com.google.android.maps.jar Telegram Signal Mail BlissLauncher BlissIconPack MozillaNlpBackend OpenWeatherMapWeatherProvider AccountManager MagicEarth OpenCamera eDrive Weather Notes Tasks NominatimNlpBackend Light DroidGuard OpenKeychain QKSMS Bromite BromiteWebView LibreOfficeViewer'" \
-e "SIGNATURE_SPOOFING=restricted" \
-e "OTA_URL=https://ota.ecloud.global/api" \
-e "REPO=https://gitlab.e.foundation/e/os/android.git" \
registry.gitlab.e.foundation:5000/e/os/docker-lineage-cicd:latest
