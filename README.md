# Self-hosted github runner with centos 8 

With github actions, you don't have ability to build your app with centos 8. This can be implemented using self-hosted runner

Please find Dockerfile which creates github centos 8 runner, you need to build and run it as below

Token can be found at Settings -> Actions -> Runners -> New self-hosted runner

docker build --build-arg repo=https://github.com/your/project --build-arg token=your_token -t github-centos8-runner .
docker run -it github-centos8-runner
