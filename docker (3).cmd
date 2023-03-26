cd "C:\Users\Admin\Desktop\8 α¥¬¥αβΰ\‘‘\lb4"
git clone https://github.com/DmitryTretiakov/docker_lb4.git
cd "C:\Users\Admin\Desktop\8 α¥¬¥αβΰ\‘‘\lb4\docker_lb4"
minikube start
kubectl delete deployment isis-4
minikube image rm  lab4:latest
docker build -t lab4:latest .
docker images
docker login
docker tag lab4:latest dmitrytretiakov/lab4:latest
docker push dmitrytretiakov/lab4:latest
kubectl apply -f Deploy.yaml
start http://127.0.0.1:80
start http://192.168.0.8:80
minikube dashboard --url