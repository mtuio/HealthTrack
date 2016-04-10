### Installing the backend box in a VM

Install Vagrant

If on Windows, get git bash; 

To start a shell in a specific folder w/ git bash to to that folder with Windows explorer, right click and select `git bash here`

Clone this project

In a shell, go to the project directory

vagrant box ip-box https://github.com/holms/vagrant-centos7-box/releases/download/7.1.1503.001/CentOS-7.1.1503-x86_64-netboot.box

vagrant up ip-box

Port forwarding rules : 

                        localhost:2222 -> vagrant:22
                        
                        localhost:8080 -> vagrant:5000

