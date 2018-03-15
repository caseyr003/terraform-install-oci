#Get Terraform
version=0.11.2/terraform_0.11.2_linux_amd64.zip
zip=terraform_0.11.2_linux_amd64.zip
wget "https://releases.hashicorp.com/terraform/$version"
unzip $zip -d ~/
rm $zip
cd /usr/bin
sudo ln -s $HOME/terraform terraform
cd ~/

#Get OCI Plugin for Terraform
wget "https://github.com/oracle/terraform-provider-oci/releases/download/v2.0.6/linux.tar.gz"
tar -xvzf linux.tar.gz
#Add OCI to Terraform Plugins
rm -rf linux_386/ linux_arm/ linux.tar.gz
mkdir ~/.terraform.d
mkdir ~/.terraform.d/plugins
mv linux_amd64/ ~/.terraform.d/plugins/
