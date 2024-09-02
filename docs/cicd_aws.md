# CI/CD processs

## First deployment:
1. Run  **Terraform Plan and Apply** - This pipeline builds the AWS Cloud infrastructure, including the VPC network, two subnets, the EKS Cluster, node groups, and other resources.
https://github.com/alex-mishe/jango_project/actions/runs/10631444900
- Result:
<img width="300" alt="image" src="https://github.com/user-attachments/assets/3c1e36c5-5bc7-428b-a369-33b9957ef3f1">

<img width="300" alt="image" src="https://github.com/user-attachments/assets/c194e531-93b8-4d07-993f-6b29cf3877aa">

Once deployed need retrieve the URL created after about 5 mimutes using

```bash
kubectl get services                                                  
NAME            TYPE           CLUSTER-IP      EXTERNAL-IP                                                              PORT(S)        AGE
kubernetes      ClusterIP      172.20.0.1      <none>                                                                   443/TCP        33m
pizza-service   LoadBalancer   172.20.130.11   ace2735b7d24d4bfdb7716e9f4eeb1b3-665816103.us-west-2.elb.amazonaws.com   80:31173/TCP   6m1s

EXTERNAL-IP is URL: ace2735b7d24d4bfdb7716e9f4eeb1b3-665816103.us-west-2.elb.amazonaws.com
```

**Web Application URLs**:
1. Go to  http://ace2735b7d24d4bfdb7716e9f4eeb1b3-665816103.us-west-2.elb.amazonaws.com/admin to access the admin panel and manage users and orders.
2. Go to http://ace2735b7d24d4bfdb7716e9f4eeb1b3-665816103.us-west-2.elb.amazonaws.com/place_order/ to place an order.
3. Go to https://ace2735b7d24d4bfdb7716e9f4eeb1b3-665816103.us-west-2.elb.amazonaws.com/orders/ to view orders.

2. Run **Build & Deploy to EKS** from main branch. This pipeline builds the Docker container image, pushes it to AWS ECR, and deploys it to Kubernetes (AWS EKS).

https://github.com/alex-mishe/jango_project/actions/runs/10631422732

- Results:
<img width="300" alt="image" src="https://github.com/user-attachments/assets/947680cf-4f71-4039-bee1-62c4912fbb2c">

<img width="300" alt="image" src="https://github.com/user-attachments/assets/a7836582-d13b-49f1-ba65-956350bcd01b">

<img width="300" alt="image" src="https://github.com/user-attachments/assets/88ff77eb-2b68-4aaf-bcfb-6900770a3510">


