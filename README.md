# aws-S3-backup
<img src="https://miro.medium.com/max/1280/1*B9CIOrxdROHvtdmouQA1_A.png"  alt="AWS S3 Backup" class="center" /><br/>
        </p>
 ## This bash script allows you to easily backup and manage your AWS S3 contents
 
 # Introduction
The script will download your s3buckets,  it will compress each s3bucket into a zip with a date and will upload wherever you want (example i upload on an empty s3bucket) then 
will remove downloaded files on os machine.


## Requirements
- Download and install AWS CLI  [Download AWS CLI](https://aws.amazon.com/cli/)  on your Linux machine 
- After installation go to AWS settings  and configure credentials **"AWS access key ID"**  **"AWS secret access key"** and **"AWS Region"**  that you can create 
through the [IAM service](https://docs.aws.amazon.com/en_us/IAM/latest/UserGuide/introduction.html) in the AWS console. The IAM user needs a programmatic access account with a correct read/write S3 policy attached (e.g AmazonS3FullAccess). [IAM S3 example policy](https://docs.aws.amazon.com/en_us/IAM/latest/UserGuide/reference_policies_examples_s3_rw-bucket.html)
- Open terminal and configure aws creditionals on your machine  type (aws configure) command insert your **"Access Key"**,  **"Secret Key"** and **"Region name"** mentioned above
- On a Linux machine you need to have 7zip


## Get Started
- git clone https://github.com/gseyranyan/aws-S3-backup.git 
- Create **s3domain.txt** file in directory **/home/s3/** and insert your  s3bucket names example "mybucket" on **s3domain.txt**
- Open s3backup.sh and choose prefer path where you want to save backup (my example path to s3://backup) on 6 line
- Finally just run script s3backup.sh. You can schedule script on crontab for daily backup.

