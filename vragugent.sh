export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/root/bin
export Playbook=$1
apt-get install -y git ansible
cd /tmp
echo "localhost ansible_connection=local" >> /etc/ansible/hosts
git clone https://github.com/vmtocloud/ansible-examples.git
cd ansible-examples/$Playbook/
ansible-playbook site.yml
