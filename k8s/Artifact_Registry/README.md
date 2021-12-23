- Step 1 :
  Create Service Account with Artifact Registry Access 
  Generate Key (Json  File)
- Step 2:
  Do Docker Login passing same file 
  docker login -u _json_key -p "$(cat key.json)" \
  https://us-central1-docker.pkg.dev
  It will create configuration file in .docker folder
- Step 3:
  Create Kubernetes Secret using .docker/config.json file
  kubectl create secret generic regcred \
    --from-file=.dockerconfigjson=/home/neha_shirsat21/.docker/config.json \
    --type=kubernetes.io/dockerconfigjson
- Step 4 :
  Use Imagepullsecret attribute in deployment file and give the secret name 
  
