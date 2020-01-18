# Simple nodejs CDN server | docker-compose version
Docker compose version of https://github.com/mrspartak/js-cdn-images for easy deployment

##API
Under construction

##Setup

0. Ensure you have Docker Engine installed on your server

1. Clone this repo to your server
```
  git clone https://github.com/mrspartak/js-cdn-images-dc.git
```

2. Copy and edit .env file
```
  cd js-cdn-images-dc
  cp .env.example .env
  nano .env
```

```
#write your domain name here pointed via DNS to your server IP address. You can use Cloudflare to have SSL encrypted connection
APP_DOMAIN=cdn_js_check
APP_SCHEME=https

#app host port
APP_PORT=3000 

#api key to restrict image upload
APP_API_KEY=

#debug app
APP_DEBUG=0

#app storage folder, can be any local mounted
UPLOAD_PATH_HOST=/path/to/image/storage
```

3. Add your domain certificates to nginx/cert folder or edit nginx to disable ssl

4. Add permissions to your server's folder
```
chown 1000:1000 /path/to/image/storage
```

5. Run docker :)
```
docker-compose up -d
```