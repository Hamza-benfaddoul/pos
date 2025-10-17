import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";
import tailwindcss from "@tailwindcss/vite";

export default defineConfig({
  plugins: [react(), tailwindcss()],
  server: {
    host: "0.0.0.0",
    port: 3000,
    strictPort: true,
    hmr: {
      clientPort: 443, // Important for HTTPS HMR
    },
  },
  resolve: {
    alias: {
      "@": "/src",
    },
  },
});
