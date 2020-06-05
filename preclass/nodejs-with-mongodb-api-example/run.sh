# docker run -d -p 27017:2017 --name mongodb mongo:4

docker volume create --name nodemodules
docker volume remove nodemodules

docker build -t app .
docker run -p 4000:4000 \
    --link mongodb \
    -e MONGO_URL=mongodb \
    -e PORT=4000 \
    -v `pwd`:/src \
    -v nodemodules:/src/node_modules \
    app npm run dev:watch

 