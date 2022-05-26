Minimal Node.js application for intro to Docker tutorial: https://www.digitalocean.com/community/tutorials/how-to-build-a-node-js-application-with-docker

# clone no git 
git clone https://github.com/do-community/nodejs-image-demo.git node_project


#build do projeto
docker build -t node-demo .



#iniciar o projeto
docker run --name node-demo -p 80:8080 -d node-demo

