
#!/bin/bash

pImage=$1
pNamespace=$2
pReplicas=$3
pCluster=$4

if [[ ! -n "${pImage}" ]] ;then
	echo "ACR image not found"
	echo "ex: deploy.sh {ACR Image} {K8S Namespace} {K8S Replica} {K8S Cluster}"
	        exit -1
fi

if [[ ! -n "${pNamespace}" ]] ;then
	echo "not input namespace"
        echo "ex: deploy.sh {ACR Image} {K8S Namespace} {K8S Replica} {K8S Cluster}"
	        exit -1
fi

if [[ ! -n "${outboundCount}" ]] ;then
	    outboundCount=11
fi

echo "ACR image: "${pImage}
echo "K8S Namespace: "${pNamespace}
echo "K8S Replica: "${pReplicas}
echo "K8S Cluster: "${pCluster}



