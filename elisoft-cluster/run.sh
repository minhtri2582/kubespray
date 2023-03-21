docker run --rm -it --mount type=bind,source=/Users/trido/DevOps/devops-elisoft/kubespray/elisoft-cluster,dst=/inventory \
  --mount type=bind,source=/Users/trido/.ssh/id_rsa,dst=/root/.ssh/id_rsa \
  --mount type=bind,source=/Users/trido/.ssh/id_rsa,dst=/home/sysadmin/.ssh/id_rsa \
  quay.io/kubespray/kubespray:v2.16.0 bash

docker run --rm -it --mount type=bind,source=/Users/trido/DevOps/devops-elisoft/kubespray/elisoft-cluster,dst=/inventory \
  --mount type=bind,source=/Users/trido/.ssh/id_rsa,dst=/root/.ssh/id_rsa \
  --mount type=bind,source=/Users/trido/.ssh/id_rsa,dst=/home/sysadmin/.ssh/id_rsa \
  quay.io/kubespray/kubespray bash

# ansible-playbook -i /inventory/host.ini cluster.yml --user=root --ask-pass --become --ask-become-pass
ansible-playbook -i /inventory/host.ini --private-key /root/.ssh/id_rsa cluster.yml
ansible-playbook -i /inventory/host.ini --private-key /root/.ssh/id_rsa scale.yml

