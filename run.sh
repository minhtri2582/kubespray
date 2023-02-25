
docker run --rm -it --mount type=bind,source=/tmp/kubespray/elisoft-cluster,dst=/inventory \
  --mount type=bind,source=/tmp/.ssh/id_rsa,dst=/root/.ssh/id_rsa \
  --mount type=bind,source=/tmp/.ssh/id_rsa,dst=/home/sysadmin/.ssh/id_rsa \
  quay.io/kubespray/kubespray:v2.16.0 bash

ansible-playbook -i /inventory/hosts.yaml cluster.yml --user=sysadmin --ask-pass --become --ask-become-pass 