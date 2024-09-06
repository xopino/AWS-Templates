# AWS-Examples
Codebase for AWS examples used through AWS Solutions Architect Certification

## AWS Configuration

This repository requires AWS credentials to be configured locally for it to work. Before using this project, ensure that the `.aws/` directory is properly set up on root directory.

### Steps to Set Up AWS Credentials

1. **Create the `.aws/` Directory**  
   Run the following command in your terminal to create the necessary directory if it doesn't exist:
   ```bash
   mkdir -p ~/.aws

2. **Configure AWS Credentials**
    Create or edit the ~/.aws/credentials file to add your AWS access keys:
    ```toml
    [default]
    aws_access_key_id = YOUR_ACCESS_KEY_ID
    aws_secret_access_key = YOUR_SECRET_ACCESS_KEY
    ```
3. **Configure AWS Region and Output Format**
    Configure AWS Region and Output Format

    ```toml
    [default]
    region = YOUR_PREFERRED_REGION
    output = json

4. **Verify AWS Configuration**

    ```bash
    aws sts get-caller-identity
