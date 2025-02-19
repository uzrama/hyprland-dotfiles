result=$(nvidia-smi --format=csv --query-gpu=utilization.gpu | awk "NR==2{print$1}" | tr -d " ")
echo $result
