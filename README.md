# Welcome to Slidev Docker

Run this with the example docker-compose, in a folder where your slides are in alphabetical ordering, inside a folder ```./slides```

```yaml
version: '3'

services:
  slideshow:
    image: richardhp/slidev:latest
    volumes:
      - ./slides:/tmp/slides
    ports:
      - 7000:3030
    environment:
      - TITLE=Monadt
```

