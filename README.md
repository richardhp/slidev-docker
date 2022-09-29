# Welcome to Slidev Docker

Run this with the example docker-compose, in a folder where your slides are in alphabetical ordering, inside a folder ```./slides```

If your docker-compose file looks like this:

```yaml
version: '3'

services:
  build_slideshow:
    image: richardhp/slidev-docker:latest
    volumes:
      - ./slides:/tmp/slides
      - ./dist:/slidev/dist
    environment:
      - TITLE=MyTitle

  serve_slideshow:
    image: nginx:1.23.1-alpine
    volumes:
      - ./dist:/usr/share/nginx/html
    ports:
      - 7000:80
```

## Building 

Then you can build your slideshow like so:

```bash
docker-compose run build_slideshow
```

And a dist folder will appear in that directory with the necessary files to run and serve using nginx.

## Serving

You can then run

```bash
docker-compose up serve_slideshow
```

and nginx will serve it on port 7000 (or whatever you set in your docker-compose file).

## Deployinh

You can just create a simple nginx based Dockerfile, and copy the dist folder to the /usr/share/nginx/html folder, something like this:

```Dockerfile
FROM nginx:1.23.1-alpine

COPY ./dist /usr/share/nginx/html
```

Then build and push that image and it will just serve up your presentation wherever it's deployed.  You can then stick that behind a reverse proxy, or into your kubernetes stack or whatever and your presentation is live!
