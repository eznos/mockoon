# Mockoon

## Dockerized

```bash
mockoon-cli dockerize --data ./MBS-API.json --port 3000 --output ./tmp/Dockerfile
```

## Deployment

```bash
#for ARM chip set
docker buildx build --platform linux/amd64 -t registry.heroku.com/mbs-mockoon/web .
docker push registry.heroku.com/mbs-mockoon/web

#for x86 chip set
heroku container:push web -a mbs-mockoon         

#release
heroku container:release web -a mbs-mockoon
```
