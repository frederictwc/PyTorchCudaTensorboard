docker stop pytorch_cuda
docker rm pytorch_cuda
docker image rm pytorch_cuda
docker build -t pytorch_cuda .
docker run --gpus all -d -p 6006:6006 \
-v $(pwd):/workspace/src/ \
--name pytorch_cuda \
-it pytorch_cuda
docker exec -it pytorch_cuda bash 
