import { defineConfig } from "vite";
import vue from "@vitejs/plugin-vue";

// https://vite.dev/config/
export default defineConfig({
  base: "https://tsub.jaytech.pro/", //tsub.jaytech.pro Topsweets
  plugins: [vue()],
});
