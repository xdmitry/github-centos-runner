from rockylinux:8
run yum update -y
run yum -y groupinstall "Development Tools"
run yum -y install sudo
run adduser runner
run echo "runner ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
user runner
workdir /home/runner
run curl -o actions-runner-linux-x64-2.303.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.303.0/actions-runner-linux-x64-2.303.0.tar.gz && tar xzf ./actions-runner-linux-x64-2.303.0.tar.gz && rm -rf ./actions-runner-linux-x64-2.303.0.tar.gz
ARG repo
ARG token
run ./config.sh --url $repo --token $token
CMD ["/home/runner/run.sh"]
