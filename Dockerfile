# Step 1: Node base image choose karna
FROM node:20-alpine

# Step 2: App directory create karna
WORKDIR /usr/src/app

# Step 3: Package.json aur package-lock.json copy karna
COPY package*.json ./

# Step 4: Dependencies install karna
RUN npm install

# Step 5: App source code copy karna
COPY . .

# Step 6: App port expose karna
EXPOSE 3000

# Step 7: App start command
CMD ["npm", "start"]

