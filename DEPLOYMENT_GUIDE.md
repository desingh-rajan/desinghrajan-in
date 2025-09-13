# 🚀 Deployment Guide

## Quick Development Workflow

### Method 1: Simple 3-Step Process

1. **Make changes and push to GitHub:**

   ```bash
   git add .
   git commit -m "Describe your changes"
   git push origin main
   ```

2. **Build and push Docker image:**

   ```bash
   docker build -t desinghrajan/desinghrajan:latest .
   docker push desinghrajan/desinghrajan:latest
   ```

3. **Deploy to server:**

   ```bash
   ssh root@139.84.144.43 "docker pull desinghrajan/desinghrajan:latest && docker stop desinghrajan-web && docker rm desinghrajan-web && docker run -d --name desinghrajan-web --restart unless-stopped -p 3000:80 -e RAILS_MASTER_KEY=be810ab82199f78005dc6c07aa2dcde2 -e SOLID_QUEUE_IN_PUMA=true -e WEB_CONCURRENCY=1 desinghrajan/desinghrajan:latest"
   ```

### Method 2: Using the Deploy Script

Simply run:

```bash
./bin/deploy
```

This script will:

- Build your Docker image locally
- Push it to Docker Hub  
- Deploy to your Vultr server
- Restart the application

## Server Details

- **Server IP:** 139.84.144.43
- **Application Port:** 3000
- **Domain:** <https://desinghrajan.in>
- **Direct Access:** <http://139.84.144.43:3000>

## Docker Commands for Troubleshooting

### Check running containers

```bash
ssh root@139.84.144.43 "docker ps"
```

### View application logs

```bash
ssh root@139.84.144.43 "docker logs desinghrajan-web"
```

### Check server resources

```bash
ssh root@139.84.144.43 "docker stats desinghrajan-web --no-stream"
```

### Restart application

```bash
ssh root@139.84.144.43 "docker restart desinghrajan-web"
```

## Environment Variables

The application requires these environment variables:

- `RAILS_MASTER_KEY`: For Rails encryption (from .kamal/secrets)
- `SOLID_QUEUE_IN_PUMA`: Enable background jobs in Puma
- `WEB_CONCURRENCY`: Number of Puma workers (set to 1 for 1GB RAM)

## Notes

- Your Rails app uses **SQLite in production** - very efficient!
- **Solid Queue/Cache/Cable** handle background jobs and caching
- The app typically uses ~245MB RAM (25% of your 1GB VPS)
- **Zero-downtime deploys** when using the proper restart sequence
- Domain automatically handles HTTPS via existing Nginx + SSL setup

## Quick Health Check

Test if your app is responding:

```bash
curl -s -o /dev/null -w "%{http_code}" http://139.84.144.43:3000
```

Should return `200` if everything is working.
