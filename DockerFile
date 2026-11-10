# Gunakan image Nginx versi ringan (Alpine)
FROM nginx:alpine

# Hapus konfigurasi default Nginx
RUN rm -rf /usr/share/nginx/html/*

# Salin semua file website Anda ke dalam container
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Jalankan Nginx
CMD ["nginx", "-g", "daemon off;"]
