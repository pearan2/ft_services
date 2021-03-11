#!bin/bash

# 미니큡 실행
minikube delete
minikube start --vm-driver=virtualbox

#docker 의 이미지들을 minikube 에서 사용할수 있도록
eval $(minikube docker-env)


# 이미지 빌드
docker build -t honlee_nginx srcs/nginx

# 로드밸런서
minikube addons enable metallb
kubectl apply -f ./srcs/metallb.yaml


# 디플로이먼트와 서비스 어플라이
kubectl apply -f ./srcs/nginx.yaml

#echo "대쉬보드를 실행합니다."
#minikube dashboard > /dev/null