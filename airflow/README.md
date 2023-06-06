Terraform:
1. Install Terraform CLI:
 https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

2. Install AWS CLI by command line following instruction:
 https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

3. AWS account and associated credentials that allow to create resources.

create the user "admin", create the role "adminS3" and give full permission of s3 bucket (add this user to the created group admin_group).
generate the Access key.

using Access key and Security key finding own AWS account follow commands:

aws sts get-caller-identity \
    --query Account \
    --output text


Output: 597227572402 (account ID)

https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-identifiers.html

https://www.msp360.com/resources/blog/how-to-find-your-aws-access-key-id-and-secret-access-key/#:~:text=1%20Go%20to%20Amazon%20Web,and%20Secret%20Access%20Key)%20option.

https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_use-resources.html

Create Root Access Key and set the AWS_ACCESS_KEY_ID environment variable and secret key:

export AWS_ACCESS_KEY_ID='*****'
export AWS_SECRET_ACCESS_KEY='*****'



Write configuration:

1. run from cmd of current folder:
   touch main.tf 

2. create code for main.tf and variable.tf files with code for terraform provider
3. Add the script for define resource "aws_s3_bucket" and values for variables
4. Run command to initialize the working directory: 
      terraform init 

5. Run command for script verification:
      terraform plan

6. Run command to create your S3 bucket (or terraform apply -auto-approve):
      terraform apply
      terraform destroy

7. Create the cluster Redshift and role with all access to Redshift and S3

8. Redshift query editor v2:

create table co2_emission (year int, month int, state_name varchar(255), state_code varchar(255), co2_tonnes varchar(25), tf varchar(25));

select * from co2_emission limit 10;

copy co2_emission from 's3://airlines-emission/s3_emission'
iam_role 'arn:aws:iam::597227572402:role/adminRedshift'
ignoreheader 1
delimiter ','
removequotes
emptyasnull
blanksasnull
maxerror 5;


Airflow:

1. Run from current folder:
    docker-compose up -d 
2. Open http://localhost:8080 and login as user: airflow and password: airflow
3. Now you be able to see the DAG "s3_dag"
4. Choose the "Trigger DAG" in the right drop-down menu and run this DAG
5. Check the state and log for it

P.S. If you got the error depends to incorrect Path, you shoud check the path for that following next recomandation:
- the DAG file should be in the folder /dags
- the folder located in /opt/airflow/dags (the airflow uses only absolut path)
- the created folders and files should have permission to execute (
    - in the terminal change to root: sudo su -
    - cd /opt/airflow/dags/
    - ls -ltr
    - chmod a+x filename.py/folder
) 

