# Deploy from Local Machine to EKS

1. **Configure Access to AWS**:
    ```bash
    aws configure
    ```

2. **Deploy Kubernetes Resources**:
    - Apply the deployment:
        ```bash
        kubectl apply -f kubernetes/deployments.yaml
        ```

    - Apply the service load balancer:
        ```bash
        kubectl apply -f pizza-service.yaml
        ```

3. **Restart Deployment**:
    ```bash
    kubectl rollout restart -f deployments.yaml
    ```

4. **Check EKS Cluster from Local Machine**:
    - **Check Deployment Status**:
        ```bash
        kubectl get deployments
        ```
        Example output:
        ```
        NAME               READY   UP-TO-DATE   AVAILABLE   AGE
        pizza-deployment   2/2     2            2           92m
        ```

    - **Check Services Status**:
        ```bash
        kubectl get services
        ```
        Example output:
        ```
        NAME            TYPE           CLUSTER-IP      EXTERNAL-IP                                                               PORT(S)        AGE
        kubernetes      ClusterIP      172.20.0.1      <none>                                                                    443/TCP        24h
        pizza-service   LoadBalancer   172.20.58.174   a2abf0ebd90e84ef4be1fcb5ef5ff113-1632965381.us-west-2.elb.amazonaws.com   80:32627/TCP   18h
        ```

    - **Check Pod Status**:
        ```bash
        kubectl get pods
        ```
        Example output:
        ```
        NAME                                READY   STATUS    RESTARTS   AGE
        pizza-deployment-56d8d58658-c76x8   1/1     Running   0          92m
        pizza-deployment-56d8d58658-t2hkn   1/1     Running   0          89m
        ```

5. **Delete Deployment**:
    - To delete the deployment:
        ```bash
        kubectl delete deployment pizza-deployment --namespace=default
        ```

    - To delete the pods:
        ```bash
        kubectl delete pods -l app=pizza-app
        ```
        Example output:
        ```
        pod "pizza-deployment-68494c4c9f-5bttc" deleted
        pod "pizza-deployment-7bc47bc4c6-4lb9z" deleted
        ```

6. **View Pod Logs**:
    ```bash
    kubectl logs pizza-deployment-68494c4c9f-5bttc
    ```
    - If the pod is deleted, you may encounter:
        ```bash
        error: error from server (NotFound): pods "pizza-deployment-68494c4c9f-5bttc" not found in namespace "default"
        ```
