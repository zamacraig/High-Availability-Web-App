# High Availability Web Application

The High Availability Web App Infrastructure project uses Terraform to automate the creation and management of AWS resources, ensuring a highly available and fault-tolerant web application deployment.

## Features
- Automated Infrastructure Provisioning

- High Availability and Scalability

- Load Balancing

- Auto-scaling Groups

- Multi-AZ Deployments

- Infrastructure as Code (IaC)

## Architecture
The architecture includes:

- VPC: Virtual Private Cloud to isolate the infrastructure.

- Subnets: Public and private subnets across multiple availability zones.

- Load Balancer: An Elastic Load Balancer to distribute incoming traffic.

- Auto-scaling Groups: Automatically scale the number of instances based on demand.

- EC2 Instances: Virtual machines running the web application.

- RDS: Amazon Relational Database Service for a replicated database setup.

- Security Groups: Control inbound and outbound traffic to instances.

### Architectural Diagram:

![High Availability Web Application drawio](https://github.com/user-attachments/assets/0184009a-9d01-4025-870d-552b50429dd7)


## Requirements
- Terraform v0.12 or later

- AWS CLI configured with appropriate credentials

- An AWS account

## Installation
To set up the project locally:

1. Clone the repository:

```bash
git clone https://github.com/zamacraig/High-Availability-Web-App.git
cd High-Availability-Web-App
```

2. Initialize Terraform:

```bash
terraform init
```

3. Apply the Terraform configuration:

```bash
terraform apply
```

4. Confirm the apply with yes when prompted.

## Usage
After starting the application, you can access it at http://localhost:3000. Make sure to configure your load balancer and monitoring tools as per the documentation.

## Contributing
We welcome contributions! Please follow these steps to contribute:

1. Fork the repository.

2. Create a new branch:

```bash
git checkout -b feature-name
```

3. Make your changes.

4. Commit your changes:

```bash
git commit -m "Description of changes"
```

5. Push to the branch:

```bash
git push origin feature-name
```

6. Open a pull request.

## License
This project is licensed under the MIT License. See the LICENSE file for details.
