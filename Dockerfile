from rockylinux:8
ARG repo
ARG token
run yum update -y
run yum -y groupinstall "Development Tools"
run yum -y install sudo
run adduser runner
run echo "runner ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
user runner
workdir /home/runner
run mkdir actions-runner && cd actions-runner
run curl -o actions-runner-linux-x64-2.303.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.303.0/actions-runner-linux-x64-2.303.0.tar.gz
run tar xzf ./actions-runner-linux-x64-2.303.0.tar.gz
run ./config.sh --url $repo --token $token
CMD ["/home/runner/run.sh"]
