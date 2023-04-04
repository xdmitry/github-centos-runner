# Self-hosted github runner with centos 7/8 

With github actions, you don't have ability to build your app with centos 7/8. This can be implemented using self-hosted runner

Please find Dockerfile which creates github centos 7/8 runner, you need to build and run it as below

Token can be found at Settings -> Actions -> Runners -> New self-hosted runner

# Centos 8 runner

```
docker build --build-arg repo=https://github.com/your/project --build-arg token=your_token -t github-centos8-runner .
docker run -it --rm github-centos8-runner
```

# Centos 7 runner

```
docker build --build-arg repo=https://github.com/your/project --build-arg token=your_token -t github-centos7-runner -f Dockerfile7 .
docker run -it --rm github-centos7-runner
```

Please note that you need recent docker version to run this, docker-1.13.1 bundled with centos 7 may not work due to some bug in there. docker-ce-20.10.21-3.el7.x86_64 is known to work
