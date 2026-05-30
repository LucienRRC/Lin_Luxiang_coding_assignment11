# Assignment 11 – React Application with Docker

---

## Step 1: Create the React Project

Create a new React application using Create React App.

```bash
npx create-react-app my-app
cd my-app
```

---

## Step 2: Ignore Heavy Dependencies

Create a `.dockerignore` file in the project root directory.

```text
node_modules
npm-debug.log
build
.git
.gitignore
```

The `.dockerignore` file prevents unnecessary files and folders from being copied into the Docker image. This reduces image size and improves build performance.

---

## Step 3: Set Up the Dockerfile

Create a file named `Dockerfile` in the project root directory.

```dockerfile
FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
```

### Dockerfile Explanation

* `FROM node:18-alpine`
  Uses the lightweight Node.js 18 Alpine Linux image.

* `WORKDIR /app`
  Sets the working directory inside the container.

* `COPY package*.json ./`
  Copies dependency configuration files.

* `RUN npm install`
  Installs all project dependencies.

* `COPY . .`
  Copies the application source code into the container.

* `EXPOSE 3000`
  Exposes port 3000 used by the React application.

* `CMD ["npm", "start"]`
  Starts the React development server when the container runs.

---

## Step 4: Docker Environment Setup

Ensure Docker Desktop is installed and running.

Verify Docker installation:

```bash
docker --version
```

Verify Docker service is running:

```bash
docker ps
```

Expected output should display Docker version information and an empty or populated container list.

---

## Step 5: Build the Docker Image

Build the Docker image using the following command:

```bash
docker build -t assignment11-image .
```

---

## Step 6: Run the Docker Container

Run the container using:

```bash
docker run -it -d -p 7775:3000 --name Lin_Luxiang_coding_assignment11 assignment11-image
```

---

## Step 7: Test the Application

Open a web browser and navigate to:

```
http://localhost:7775
```

---
