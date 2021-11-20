#!/bin/bash
sudo chmod -R 777 /home/ec2-user/express-app
cd /home/ec2-user/express-app

#add npm and node to path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh"] && \. "$NVM_DIR/nvm.sh" #loads nvm
[ -s "$NVM_DIR/bash_completion.sh"] && \. "$NVM_DIR/bash_completion" #loads nvm bash completion

#Install npm modules
npm install

node app.js > app.out.log 2> app.err.log < /dev/null &
