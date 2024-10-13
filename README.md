terraform-project/
├── .github/
│   └── workflows/
│       └── terraform-deploy.yml  # GitHub Actions pipeline
├── modules/
│   ├── vpc/
│   ├── public_subnets/
│   ├── private_subnets/
│   ├── internet_gateway/
│   └── route_tables/
├── main.tf          # Основной файл конфигурации
├── provider.tf      # Конфигурация провайдера AWS
├── securitygroups.tf  # Security Groups
├── bastion.tf       # Bastion Host
├── nat.tf           # NAT Instance
├── variables.tf     # Файл переменных
├── githubpolicy.tf # Конфигруация ролей github
├── s3.tf        # Блок конфигурации состояния инфраструктуры
├── policy.tf        # Конфигурация ролей
├── terraform.tvars  # Конфигурация переменных
