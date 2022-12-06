docker build -t devops/notes-docker
docker run --network devops --hostname app -p 8080:8080 -d devops/notes-docker