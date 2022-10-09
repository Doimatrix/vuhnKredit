
# autotune.docker

:wrench: autotune is a MUST HAVE (2MB) system tuner for ALL your docker hosts

#### Sceptic? See it with your own eyes: 

![rancher-host-stats-autotune-launch](https://cloud.githubusercontent.com/assets/3604053/14365847/b66d2afc-fd07-11e5-9100-ec899b6814bf.png)

```yaml
# The image upwards showns stats from one host while receiving a deployment
# of the autotune.docker. Here is the configuration used on the deployment:

# docker-compose.yml 
autotune:
  environment: