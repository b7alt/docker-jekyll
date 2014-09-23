# docker-jekyll

The Dockerfile in this repo will build an image that will allow you to easily host a Jekyll site. Just include this base image from the Docker Hub in your own project, include the source for your Jekyll site, and build!

* [Docker Hub Repo](https://registry.hub.docker.com/u/troyswanson/jekyll/)
* [Dockerizing Jekyll](http://troy.im/2014/09/21/dockerizing-jekyll/) (a blog post I wrote about this project)

## Usage

Create a Dockerfile in the same directory as the rest of your Jekyll site's source:

```
FROM troyswanson/jekyll

ADD . /tmp

RUN jekyll build --trace -s /tmp -d /usr/share/nginx/html
```

Build the image:

```
docker build .
```

Run the image (don't forget to forward the port):

```
docker run -d -p [host port]:80 [image id]
```

Test it out by hitting the host machine on the port you specified.
