# AWS-Terraform

In this project we are asked to create :
 - 2 load balancers (create terraform module)
 - 4 web servers  (create terraform module)
 - 4 application servers  (create terraform module)
 - 1 RDS (mySQL)
 - 1 S3 bucket


# Run Locally

## Clone the project
> git clone https://github.com/Samer99Najjar/AWS-Terraform.git

## Go to the Porject Dir
> CD AWS-Terraform

## Change the variables value so it can fit into ur working Space
> If you want to run the project locally you must change the varibales value in the CreateAll.tf file

> especially the value of the keys and the AMI  !!!!!!

## Init the environment
> terraform init

## Plan to Check that everything is OK
> terraform plan

## You should get output that look like this
![alt text](https://github.com/Samer99Najjar/AWS-Terraform/blob/main/planwork.PNG)


## Apply The project
> terraform apply

## Open the servers
> in order to open the servers you need to take the load balancer IP from the output and write it in chrome

> after doing that in order to switch to the other server all you need to do is refresh the page 

> the first IP is for Server 1 and 2 and Second one is for server 3 and 4 

## Close all
> terraform destroy 



