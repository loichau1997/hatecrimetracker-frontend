cp src/configs/config_prod.js src/configs/appConfig.js
yarn build
gcloud config set project hate-crime-tracker
gsutil -m rm -r gs://hatecrimetracker/*
gsutil -m cp -R build/* gs://hatecrimetracker
cp src/configs/config_dev.js src/configs/appConfig.js