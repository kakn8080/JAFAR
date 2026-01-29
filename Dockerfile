FROM nginx:alpine

# إعداد Nginx ليعمل على بورت 6060 بدلاً من 80
RUN sed -i 's/listen[[:space:]]*80;/listen 6060;/g' /etc/nginx/conf.d/default.conf

RUN rm -rf /usr/share/nginx/html/*
COPY . /usr/share/nginx/html

# فتح المنفذ 6060
EXPOSE 6060

CMD ["nginx", "-g", "daemon off;"]
