# use a node base container image
FROM node
MAINTAINER Dean Houari
COPY myshell.rar /home
COPY web.rar /home 
ADD webapp.js /webapp.js
EXPOSE 8000/tcp
ENTRYPOINT ["node", "webapp.js"]
