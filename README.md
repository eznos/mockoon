# Mockoon

## Dockerized

```bash
mockoon-cli dockerize --data ./MBS-API.json --port 3000 --output ./tmp/Dockerfile
```

## Deployment

```bash
heroku container:push web -a mbs-mockoon                                                                                                                                         
heroku container:release web -a mbs-mockoon
```
