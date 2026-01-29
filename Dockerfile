FROM nginx:alpine

# إعداد Nginx ليعمل على بورت 3000 بدلاً من 80
RUN sed -i 's/listen[[:space:]]*80;/listen 3000;/g' /etc/nginx/conf.d/default.conf

RUN rm -rf /usr/share/nginx/html/*
COPY . /usr/share/nginx/html

# فتح المنفذ 3000
EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]
