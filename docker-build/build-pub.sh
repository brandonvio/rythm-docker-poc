export AWS_PROFILE=scratch-account-01
aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/k1n6i4c2
docker build -t java-build-dind-pub .
docker tag java-build-dind-pub:latest public.ecr.aws/k1n6i4c2/java-build-dind-pub:latest
docker push public.ecr.aws/k1n6i4c2/java-build-dind-pub:latest