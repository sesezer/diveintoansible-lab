

sshpass -p 'password' 
ssh-copy-id -i ./ansible.pub (for i in ubuntu)
for user in ansible root;do
    for os in ubuntu centos;do
        for instance in 1 2 3;do
            sshpass -p 'password' ssh-copy-id -i ./ansible.pub "$user"@"$os""$instance"
        done
    done
done