paginator = client.get_paginator("list_inference_components")
for page in paginator.paginate():
    for component in page["InferenceComponents"]:
        print(component["InferenceComponentName"])
