# azure-sandbox-deploy

1. Configuración inicial
# Clonar el repositorio
git clone <tu-repositorio-url>
cd azure-basic-infrastructure

# Generar claves SSH si no las tienes
ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa

# Copiar archivo de variables
cp terraform.tfvars.example terraform.tfvars
2. Configurar variables
Edita terraform.tfvars con tus valores:
hclresource_group_name = "rg-mi-proyecto"
location           = "East US"
prefix             = "mi-proyecto"
admin_username     = "azureuser"
ssh_public_key_path = "~/.ssh/id_rsa.pub"

3. Desplegar infraestructura

# Inicializar Terraform
terraform init

# Validar configuración
terraform validate

# Ver plan de despliegue
terraform plan

# Aplicar cambios
terraform apply

4. Conectar a la VM
# Usar el comando de salida
terraform output ssh_connection_command

# O manualmente
ssh azureuser@<public-ip>

5. Limpiar recursos
terraform destroy
