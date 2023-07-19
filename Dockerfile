FROM node:18
LABEL authors="mrjj"

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --omit=dev

# Bundle app source
COPY . .

# Environment variables
ENV TOKEN MTEzMTMzMjQ3MzYwMzc3MjQ1Ng.G4NsHl.RVvKs0H7cGxuKmRFr9mWwYpLu0MH8XyQtTYEJo
ENV PREFIX /
ENV IP obama.xcraft.no

# Add environment variables to data.json
CMD ["replace-env", "data.json"]

CMD [ "node", "index.js" ]