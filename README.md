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

--
Recursos Creados

Recurso Descripción 
Resource Group Contenedor para todos los recursos 
Virtual Network Red virtual con espacio de direcciones 10.0.0.0/16
Subnet Subred con rango 10.0.2.0/24
Public IP IP pública estática para la VM
Network Security Group Reglas de firewall (SSH, HTTP, HTTPS)
Network Interface Interfaz de red para la VM
Linux VM Ubuntu 20.04 LTS con autenticación SSH

Costos Estimados

VM Standard_B2s: ~$30-40/mes
Public IP: ~$3-4/mes
Storage: ~$5-10/mes
Network: ~$1-2/mes

Total aproximado: $40-60/mes USD

Seguridad

✅ Autenticación SSH sin contraseña
✅ Network Security Group configurado
✅ Acceso SSH restringido por IP (configurable)
✅ Secrets manejados por GitHub Actions

Personalización

Para modificar la infraestructura:

- Edita las variables en terraform.tfvars
- Modifica los recursos en main.tf
- Ejecuta terraform plan para ver los cambios
- Aplica con terraform apply
