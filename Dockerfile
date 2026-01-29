# استخدام نسخة nginx الخفيفة
FROM nginx:alpine

# حذف ملفات nginx الافتراضية لضمان عدم ظهور صفحة Welcome
RUN rm -rf /usr/share/nginx/html/*

# نسخ كل ملفات موقعك (index.html والصور) إلى مجلد السيرفر
COPY . /usr/share/nginx/html

# إعطاء صلاحيات القراءة للملفات
RUN chmod -R 755 /usr/share/nginx/html

# تشغيل السيرفر
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
