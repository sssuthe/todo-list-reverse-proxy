SHA=$(git rev-parse HEAD)

docker build -t sssuthe/todo-list-reverse-proxy:latest -t sssuthe/todo-list-reverse-proxy:$SHA .

docker push sssuthe/todo-list-reverse-proxy:latest

docker push sssuthe/todo-list-reverse-proxy:$SHA
