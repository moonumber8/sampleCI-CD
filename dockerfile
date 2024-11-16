# ใช้ Base Image ที่รองรับ Java
FROM openjdk:17-jdk-slim

# กำหนด working directory ใน container
WORKDIR /app

# คัดลอกไฟล์ .jar ไปยัง container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# เปิด Port ที่ Spring Boot ใช้งาน (ปกติจะเป็น 8080)
EXPOSE 8085

# รันคำสั่งเพื่อเริ่มต้นแอป Spring Boot
ENTRYPOINT ["java", "-jar", "app.jar"]
