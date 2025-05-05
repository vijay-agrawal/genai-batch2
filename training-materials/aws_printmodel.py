## This is support code to find out the model name to be used
# in the lambda function for end to end model deployment in AWS
#

# To execute this:
# 1) In AWS Sagemaker AI, deploy Jupyter Labs 
# 2) Once deployed, open a jupyter notebook from the AWS Sagemaker AI > Jupyter Labs app
# 3) In the notebook, copy paste the below code and run it
# You will see the model name printed. Use it in the lambda function
#
import boto3

# Step 1: Create the SageMaker client
# Replace with your region below
client = boto3.client("sagemaker", region_name="ap-south-1")

#Step 2: Use paginator to list inference components
paginator = client.get_paginator("list_inference_components")

print("Available Inference Components:\n")

for page in paginator.paginate():
    for component in page["InferenceComponents"]:
        print(component["InferenceComponentName"])