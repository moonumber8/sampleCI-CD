# ตัวอย่าง Spring Boot เพื่อสาธิต CI/CD

โปรเจ็กต์นี้เป็นตัวอย่างแอปพลิเคชัน Spring Boot ขนาดเล็ก ใช้สำหรับสาธิตกระบวนการ CI/CD ทั้งบน Jenkins และ GitHub Actions

## การเริ่มต้นใช้งาน

### การ build และทดสอบ
```bash
./mvnw clean package
./mvnw test
```

### การรันแอปพลิเคชัน
```bash
java -jar target/demo-0.0.1-SNAPSHOT.jar
```
แอปจะเริ่มต้นที่พอร์ต `8080`

### การสร้าง Docker image
```bash
docker build -t my-spring-boot-app -f dockerfile .
docker run -p 8080:8085 my-spring-boot-app
```

## โครงสร้างที่สำคัญ
- `Jenkinsfile` – Pipeline สำหรับ Jenkins
- `.github/workflows/ci-cd.yml` – Workflow ของ GitHub Actions
- `src/main/java` – ซอร์สโค้ดหลักของแอป
- `src/test/java` – ตัวอย่าง Unit Test

## ตัวอย่าง Endpoint
`/transactions/` จะส่งข้อความ `"Hello, CI/CD World!"`
```
curl http://localhost:8080/transactions/
```
