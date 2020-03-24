docker tag ahck8s.azurecr.io/apm-asset-issue-service:20200204.1-5.3.0.0 192.168.0.120:8082/apm-asset-issue-service:20200204.1-5.3.0.0
docker tag ahck8s.azurecr.io/apm-trigger-service:20200204.1-5.3.0.0 192.168.0.120:8082/apm-trigger-service:20200204.1-5.3.0.0
docker tag ahck8s.azurecr.io/apm-asset-risk-summary-service:20200204.1-5.3.0.0 192.168.0.120:8082/apm-asset-risk-summary-service:20200204.1-5.3.0.0
docker tag ahck8s.azurecr.io/api-assetservice:20200206.2-5.3.0.0 192.168.0.120:8082/api-assetservice:20200206.2-5.3.0.0
docker tag ahck8s.azurecr.io/apm-asset-spatial-view-service:20200204.1-5.3.0.0 192.168.0.120:8082/apm-asset-spatial-view-service:20200204.1-5.3.0.0
docker tag ahck8s.azurecr.io/api-computationdataservice:20200204.1-5.3.0.0 192.168.0.120:8082/api-computationdataservice:20200204.1-5.3.0.0
docker tag ahck8s.azurecr.io/apm-custom-model-outputs-service:20200204.1-5.3.0.0 192.168.0.120:8082/apm-custom-model-outputs-service:20200204.1-5.3.0.0
docker tag ahck8s.azurecr.io/api-customerservice:20200204.1-5.3.0.0 192.168.0.120:8082/api-customerservice:20200204.1-5.3.0.0
docker tag ahck8s.azurecr.io/apm-datarouter:20200204.1-5.3.0.0 192.168.0.120:8082/apm-datarouter:20200204.1-5.3.0.0
docker tag ahck8s.azurecr.io/apm-eam-integration-service:20200204.1-5.3.0.0 192.168.0.120:8082/apm-eam-integration-service:20200204.1-5.3.0.0
docker tag ahck8s.azurecr.io/apm-feeder-api:20200204.1-5.3.0.0 192.168.0.120:8082/apm-feeder-api:20200204.1-5.3.0.0
docker tag ahck8s.azurecr.io/apm-maintenance-score-service:20200204.2-5.3.0.0 192.168.0.120:8082/apm-maintenance-score-service:20200204.2-5.3.0.0
docker tag ahck8s.azurecr.io/apm-message-log-service:20200204.1-5.3.0.0 192.168.0.120:8082/apm-message-log-service:20200204.1-5.3.0.0
docker tag ahck8s.azurecr.io/api-modelconfigurationservice:20200204.1-5.3.0.0 192.168.0.120:8082/api-modelconfigurationservice:20200204.1-5.3.0.0
docker tag ahck8s.azurecr.io/apm-model-executor-linux:20200212.1-5.3.0.0 192.168.0.120:8082/apm-model-executor-linux:20200212.1-5.3.0.0
docker tag ahck8s.azurecr.io/apm-model-input-collector:20200204.1-5.3.0.0 192.168.0.120:8082/apm-model-input-collector:20200204.1-5.3.0.0
docker tag ahck8s.azurecr.io/apm-modelsdatarouter:20200204.1-5.3.0.0 192.168.0.120:8082/apm-modelsdatarouter:20200204.1-5.3.0.0
docker tag ahck8s.azurecr.io/apm-notification-service:20200204.1-5.3.0.0 192.168.0.120:8082/apm-notification-service:20200204.1-5.3.0.0
docker tag ahck8s.azurecr.io/apm-parameter-collector:20200204.1-5.3.0.0 192.168.0.120:8082/apm-parameter-collector:20200204.1-5.3.0.0
docker tag ahck8s.azurecr.io/apm-risk-trend-service:20200204.1-5.3.0.0 192.168.0.120:8082/apm-risk-trend-service:20200204.1-5.3.0.0
docker tag ahck8s.azurecr.io/apm-score-service:20200204.1-5.3.0.0 192.168.0.120:8082/apm-score-service:20200204.1-5.3.0.0
docker tag ahck8s.azurecr.io/apm-sensors-parameters-collector-service:20200204.1-5.3.0.0 192.168.0.120:8082/apm-sensors-parameters-collector-service:20200204.1-5.3.0.0
docker tag ahck8s.azurecr.io/api-translationservice:20200212.1-5.3.0.0 192.168.0.120:8082/api-translationservice:20200212.1-5.3.0.0
docker tag ahck8s.azurecr.io/api-userservice:20200204.1-5.3.0.0 192.168.0.120:8082/api-userservice:20200204.1-5.3.0.0
docker tag ahck8s.azurecr.io/apm-webservice-mobile:20200206.1-5.3.0.0 192.168.0.120:8082/apm-webservice-mobile:20200206.1-5.3.0.0
docker tag ahck8s.azurecr.io/apm-webservice:20200212.9-5.3.0.0 192.168.0.120:8082/apm-webservice:20200212.9-5.3.0.0

docker push 192.168.0.120:8082/apm-asset-issue-service:20200204.1-5.3.0.0
docker push 192.168.0.120:8082/apm-trigger-service:20200204.1-5.3.0.0
docker push 192.168.0.120:8082/apm-asset-risk-summary-service:20200204.1-5.3.0.0
docker push 192.168.0.120:8082/api-assetservice:20200206.2-5.3.0.0
docker push 192.168.0.120:8082/apm-asset-spatial-view-service:20200204.1-5.3.0.0
docker push 192.168.0.120:8082/api-computationdataservice:20200204.1-5.3.0.0
docker push 192.168.0.120:8082/apm-custom-model-outputs-service:20200204.1-5.3.0.0
docker push 192.168.0.120:8082/api-customerservice:20200204.1-5.3.0.0
docker push 192.168.0.120:8082/apm-datarouter:20200204.1-5.3.0.0
docker push 192.168.0.120:8082/apm-eam-integration-service:20200204.1-5.3.0.0
docker push 192.168.0.120:8082/apm-feeder-api:20200204.1-5.3.0.0
docker push 192.168.0.120:8082/apm-maintenance-score-service:20200204.2-5.3.0.0
docker push 192.168.0.120:8082/apm-message-log-service:20200204.1-5.3.0.0
docker push 192.168.0.120:8082/api-modelconfigurationservice:20200204.1-5.3.0.0
docker push 192.168.0.120:8082/apm-model-executor-linux:20200212.1-5.3.0.0
docker push 192.168.0.120:8082/apm-model-input-collector:20200204.1-5.3.0.0
docker push 192.168.0.120:8082/apm-modelsdatarouter:20200204.1-5.3.0.0
docker push 192.168.0.120:8082/apm-notification-service:20200204.1-5.3.0.0
docker push 192.168.0.120:8082/apm-parameter-collector:20200204.1-5.3.0.0
docker push 192.168.0.120:8082/apm-risk-trend-service:20200204.1-5.3.0.0
docker push 192.168.0.120:8082/apm-score-service:20200204.1-5.3.0.0
docker push 192.168.0.120:8082/apm-sensors-parameters-collector-service:20200204.1-5.3.0.0
docker push 192.168.0.120:8082/api-translationservice:20200212.1-5.3.0.0
docker push 192.168.0.120:8082/api-userservice:20200204.1-5.3.0.0
docker push 192.168.0.120:8082/apm-webservice-mobile:20200206.1-5.3.0.0
docker push 192.168.0.120:8082/apm-webservice:20200212.9-5.3.0.0