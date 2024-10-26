# **Nginx-up-page**

#### [Documentation / Source](https://docs.linuxserver.io/images/docker-nginx/)

### Docker-Compose ([Recommended, click for why](https://docs.docker.com/compose/intro/features-uses/)):

```
services:
  nginx:
    image: lscr.io/linuxserver/nginx:latest
    container_name: nginx
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Etc/UTC
    volumes:
      - ./config:/config
      - ./html:/config/www
    ports:
      - 5200:80
    restart: unless-stopped
    network_mode: bridge
```

If posible please use [environment variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/)

### HTML (with internal styling ):

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Server Monitoring</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }
        h1 {
            color: #333;
        }
        p {
            color: #666;
        }
	    .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            text-align: center;
        }
        .vertical-center {
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
        margin: 0;
        position: absolute;
        top: 50%;
        -ms-transform: translateY(-50%);
        transform: translateY(-50%);
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="vertical-center">
            <h1>Server Monitoring</h1>
            <p>This site is only to from [external] to an web page to ensure everything is up as I do not have any other published ports.</p>
            <p>(That I know of and hope of)</p>
        </div>
    </div>
</body>
</html>
```