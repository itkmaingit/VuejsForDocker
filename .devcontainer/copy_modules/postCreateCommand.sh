#/bin/bash

yes |  npx nuxi init /home/node/application
cd /home/node/application
npm install yarn &&  yarn add @mdi/font mdi sass vuetify@next webfontloader &&  yarn install &&  mkdir pages components plugins
sudo cp /home/node/copy_modules/vuetify.js /home/node/copy_modules/webfontloader.client.js /home/node/application/plugins/
sudo cp /home/node/copy_modules/nuxt.config.ts /home/node/copy_modules/.eslintrc.json /home/node/copy_modules/prettierrc.js /home/node/application/
sudo rm -r /home/node/copy_modules
