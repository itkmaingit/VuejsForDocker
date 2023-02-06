import { defineNuxtConfig } from "nuxt/config";

// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  css: [
    "vuetify/lib/styles/main.sass",
    "mdi/css/materialdesignicons.min.css",
    "@mdi/font/css/materialdesignicons.css",
  ], // 修正
  build: {
    transpile: ["vuetify"],
  },
  vite: {
    define: {
      "process.env.DEBUG": false,
    },
  },
  server: {
    port: 8000,
    host: "0.0.0.0",
    watch: {
      usePolling: true,
    },
  },
});
