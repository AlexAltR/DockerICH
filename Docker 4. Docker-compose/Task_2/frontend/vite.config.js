import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react-swc'

// https://vite.dev/config/
export default defineConfig({
  plugins: [react()],
  server: {
    host: '0.0.0.0', // Позволяет слушать все адреса
    port: 4173,  // Убедись, что это тот же порт, который проброшен
    proxy: {
      '/api': 'http://backend:3002', // Proxy API requests to the backend service
    },
  }
})
