export AWS_PROFILE=scratch-account-01
docker build -t java-build-dind .
aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 778477161868.dkr.ecr.us-west-2.amazonaws.com
docker tag java-build-dind:latest 778477161868.dkr.ecr.us-west-2.amazonaws.com/java-build-dind:latest
docker push 778477161868.dkr.ecr.us-west-2.amazonaws.com/java-build-dind:latest