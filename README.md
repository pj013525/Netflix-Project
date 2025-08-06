# Netflix-Application Project

This is a **Netflix application clone** project built with modern DevOps tools and practices.

---

## 🚀 Tools Used

- **Terraform** – Infrastructure as Code  
- **Git & GitHub** – Version Control & Source Code Management (SCM)  
- **Jenkins** – CI/CD Automation Pipeline  
- **Maven** – Build the Application  
- **SonarQube** – Code Quality Analysis  
- **Nexus** – Artifact Repository  
- **Docker** – Containerize and Deploy the Application  
- **Docker Hub** – Store Docker Images  
- **Application Load Balancer (ALB)** – Distribute Load Across Servers  
- **Route 53** – DNS Mapping for the Application  

---

## 🛠️ Step-by-Step Guide

### Step 1: Terraform Setup  
Create a `main.tf` with all necessary AWS resources and apply it.  
![Terraform Apply](https://github.com/user-attachments/assets/cc7deda8-0519-4464-848c-9b31174bc1d7)

### Step 2: AWS Console – Get EC2 Public IP  
![EC2 Public IP](https://github.com/user-attachments/assets/28da5b2f-9fbf-491b-8951-801b3d319f3d)

### Step 3: Login with MobaXterm using Key Pair  
![Mobaxterm Login](https://github.com/user-attachments/assets/820218f2-a7b5-482d-b0fe-803a3532797a)

### Step 4: Install Java 17, Jenkins, Docker  
![Install Java Jenkins Docker](https://github.com/user-attachments/assets/00147a24-32ab-4ff8-9807-102c699dc1c6)

### Step 5: Run Nexus and SonarQube with Docker  
![Nexus SonarQube Docker](https://github.com/user-attachments/assets/5a43aaff-6ad6-4b9b-b251-f5eb2a34b6f9)

### Step 6–7: Jenkins, Nexus, and SonarQube Dashboards  
![Jenkins Dashboard](https://github.com/user-attachments/assets/f94d2c40-c213-49b1-ba82-ce5a30c244fc)  
![Sonar Nexus Login](https://github.com/user-attachments/assets/e46d83a3-9379-4cdb-bfe7-1c1c39087643)

### Step 8: Nexus Repository & Sonar Webhook Setup  
![Nexus Sonar Config](https://github.com/user-attachments/assets/b5e72aff-24c6-40c8-86fa-68232a2cc61d)  
![Sonar Token](https://github.com/user-attachments/assets/cf6485da-ec7d-4846-8e98-113ac834b243)

### Step 9–12: Jenkins Configuration (Tools, Plugins, Credentials)  
![Jenkins Plugins](https://github.com/user-attachments/assets/378b034f-3c41-4b8c-9d73-2570efc62a4e)  
![Tool Config](https://github.com/user-attachments/assets/4dfc5539-0900-47c5-99e0-d68594d68da3)  
![Jenkins Credentials](https://github.com/user-attachments/assets/66fe284f-121d-4043-93f7-f7f78a192194)  
![Sonar Config](https://github.com/user-attachments/assets/9a486744-492f-40c2-965a-e168b07507f7)

### Step 13: Create Jenkins Pipeline  
![Pipeline](https://github.com/user-attachments/assets/6080de97-a2f0-4866-a62d-9f84144d1194)

### Step 14: Push Dockerfile and Jenkinsfile to GitHub  

```bash
git add Dockerfile Jenkinsfile
git commit -m "Added Dockerfile and Jenkinsfile"
git push origin main
```

### Step 15: Run Jenkins Build  
![Build Trigger](https://github.com/user-attachments/assets/86b79fae-7ba4-49d5-a88a-3d6b358b6fb8)  
![Console Output](https://github.com/user-attachments/assets/9712378a-cf71-4c70-92b3-adb0b475eb2e)

### Step 16: Validate in SonarQube and Nexus  
![Sonar Dashboard](https://github.com/user-attachments/assets/23d1f7f3-d4d5-4711-83e7-193aefeed49d)  
![Nexus Dashboard](https://github.com/user-attachments/assets/506a18b2-f69c-447b-b640-d782dbf97cf4)

### Step 17: Access Application via IP:8000  
![App Access](https://github.com/user-attachments/assets/f3670b56-d986-4586-a3c5-ac3d8f49fc8b)

### Step 18: Attach IP to Load Balancer  
<img width="1342" height="681" alt="image" src="https://github.com/user-attachments/assets/32328916-323f-43aa-8573-1bf5fa05524e" />

### Step 19: Route 53 – DNS Mapping  
![Route 53 DNS](https://github.com/user-attachments/assets/de0b888a-67cf-4107-82b2-b3679ebc18f9)

### Step 20: Share the Domain with Users  
![Final App Access](https://github.com/user-attachments/assets/74f6de87-be65-4000-bc30-41c0be590983)

---

## 📎 GitHub Repository

[https://github.com/pj013525/Netflix-Project.git](https://github.com/pj013525/Netflix-Project.git)

---

## 👨‍💻 Padmarao Jonna

**AWS DevOps Engineer**  
GitHub: [pj013525](https://github.com/pj013525)  
LinkedIn: [padmarao-jonna](https://www.linkedin.com/in/padmarao-jonna)
