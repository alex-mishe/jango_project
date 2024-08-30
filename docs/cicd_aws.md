# CI/CD Process with GithubActions in AWS Cloud 

## Components
1. **GitHub Repository**: Source code repository.
2. **GitHub Actions Pipeline**: Continuous Integration/Continuous Deployment (CI/CD) pipeline.
3. **Amazon ECR**: Container registry.
4. **Amazon EKS**: Managed Kubernetes service.
5. **Node Groups**: Compute resources in EKS.
6. **Kubernetes Deployments & Services**: Manages and exposes your application.
7. **Application Load Balancer (ALB)**: Distributes incoming traffic.
8. **Internet**: Users accessing the web application.

There are two pipelines in GitHub Actions:

1. **Build & Deploy to EKS** - This pipeline builds the Docker container image, pushes it to AWS ECR, and deploys it to Kubernetes (AWS EKS).
https://github.com/alex-mishe/jango_project/actions/runs/10631422732

<img width="300" alt="image" src="https://github.com/user-attachments/assets/947680cf-4f71-4039-bee1-62c4912fbb2c">

<img width="300" alt="image" src="https://github.com/user-attachments/assets/a7836582-d13b-49f1-ba65-956350bcd01b">

<img width="300" alt="image" src="https://github.com/user-attachments/assets/88ff77eb-2b68-4aaf-bcfb-6900770a3510">


2. **Terraform Plan and Apply** - This pipeline builds the AWS Cloud infrastructure, including the VPC network, two subnets, the EKS Cluster, node groups, and other resources.
https://github.com/alex-mishe/jango_project/actions/runs/10631444900

<img width="300" alt="image" src="https://github.com/user-attachments/assets/3c1e36c5-5bc7-428b-a369-33b9957ef3f1">

<img width="300" alt="image" src="https://github.com/user-attachments/assets/c194e531-93b8-4d07-993f-6b29cf3877aa">


**Web Application URLs**:
1. Go to [http://a2abf0ebd90e84ef4be1fcb5ef5ff113-1632965381.us-west-2.elb.amazonaws.com/admin/](http://a2abf0ebd90e84ef4be1fcb5ef5ff113-1632965381.us-west-2.elb.amazonaws.com/admin/) to access the admin panel and manage users and orders.
2. Go to [http://a2abf0ebd90e84ef4be1fcb5ef5ff113-1632965381.us-west-2.elb.amazonaws.com/place_order/](http://a2abf0ebd90e84ef4be1fcb5ef5ff113-1632965381.us-west-2.elb.amazonaws.com/place_order/) to place an order.
3. Go to [http://a2abf0ebd90e84ef4be1fcb5ef5ff113-1632965381.us-west-2.elb.amazonaws.com/orders/](http://a2abf0ebd90e84ef4be1fcb5ef5ff113-1632965381.us-west-2.elb.amazonaws.com/orders/) to view orders.

## Development Process

1. Clone the repository:
    ```bash
    git clone <repository-url>
    ```
2. Create a new branch, make your changes, and push the branch to GitHub.
3. Create a Pull Request (PR) to merge your branch into the `master` branch.
4. After the merge, all changes are automatically deployed to the Cloud.

### Pull Request Guidelines

- The PR name should contain the JIRA number and a short overview of the changes.
- The commit message should include brief information about the changes.
