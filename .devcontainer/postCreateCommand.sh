#/bin/bash

yes |  npx nuxi init /home/node/application
cd /home/node/application
npm install yarn &&  yarn add @mdi/font mdi sass vuetify@next webfontloader &&  yarn install &&  mkdir pages components plugins
sudo cp /home/node/move_modules/vuetify.js /home/node/move_modules/webfontloader.client.js /home/node/application/plugins/
sudo cp /home/node/move_modules/nuxt.config.ts /home/node/application/
sudo rm -r /home/node/move_modules