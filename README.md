![image](https://github.com/CamilleBre/fastapi-k8s/assets/57957940/c5535934-4dae-46a8-8101-ca718af59f56)


Déploiement d'une application sécurisée

Contexte et objectif :

Vous êtes recruté comme Ingénieur Devops au sein d’une société de services de streaming.

Vous êtes chargé de déployer les nouveaux micro services qui permettront l'enregistrement et le décompte des utilisateurs présents sur cette plate forme. Pour cela, vous avez 3 micro-services à déployer :

    un service qui déploiera votre application FastAPI

    un second service qui déploie votre base de données MySQL

    un dernier service qui déploie PHPMyAdmin qui est un est l'interface d'administration afin de gérer vos bases de données.

Pour la bonne réalisation de votre mission, nous vous avons préparé une feuille de route :

    Définir les objets Kubernetes adéquats pour un déploiement optimal des micro-services, vous avez le choix pour le type d'objet à utiliser.

    Écrire le Dockerfile pour le micro-service FastAPI. L'application est disponible sur le dépôt suivant : kubernetes-devops-project.git.

    Basez-vous sur le fichier docker-compose.yml afin de comprendre l'architecture à déployer.

    Vous créerez votre sous-domaine sur https://cloudns.net et vous créerez un enregistrement pour votre site internet.

    Vous utiliserez la classe de stockage par défaut de Rancher (StorageClass) afin de gérer votre stockage pour votre application. Votre volume de stockage aura 10 Gi de stockage et devra permettre que plusieurs Pods puissent écrire dessus.

    Vous définirez 3 réplicas de votre application au déploiement de celle ci.

    Vous devrez également créer un HorizontalPodAutoscaler (HPA) afin que votre application puisse facilement gérer les montées en charges. Le minimum de Pods sera de 3 et du maximum de 6 en se basant sur une consommation CPU de 70 pourcents.

    Vous devrez également préparer un plan de sauvegarde pour votre cluster grâce au client K3s.

    Vous aurez également pour tâche de sécuriser votre API grâce aux certificats SSL. Vous pouvez vous servir de let’s Encrypt pour le faire.

    Toutes les tâches devront être mises en place de 3 façons différentes :
        Déploiement grâce aux fichiers YAML standards de Kubernetes, pour les déployer vous utiliserez le Namespace standard.
        Déploiement grâce à HELM, pour les déployer vous utiliserez le Namespace helm.
        Déploiement grâce à Kustomize, pour les déployer vous utiliserez le Namespace kustomize.

Livrables:

Pour valider l'exercice vous devrez envoyer en format Zip :

    L'ensemble des fichiers créées pour le déploiement de vos objets séparés en 3 répertoires :

        un répertoire YAML-STANTARD avec toutes les configurations.

        un répertoire HELM avec toutes les configurations pour Helm.

        un répertoire KUSTOMIZE avec toutes les configurations pour Kustomize.

    Les fichiers de logs de vos différents micro-services (FastAPI, MySQL, PHPMyAdmin).

    Un fichier de sauvegarde de votre base de données ETCD une fois toutes les configurations mise en place déployées.

Quelques conseils pour vous lancer :

    Chaque micro-service devra être exposé via un service afin que les autres micro-services puissent se connecter sur un port spécifique.

    Le seul Pod avec lequel on pourra se connecter via les ingress est celui de l'application FastAPI.

    Bien choisir vos objets en fonction du type d'application (Stateful, Stateless) ou en fonction de la confidentialité (ConfigMap, Secret)

    Pour remplir votre base de données vous pouvez le faire sur la route /docs de votre micro-service FastAPI.

    Pour la liste des utilisateurs, la route est /users.

    Pour le comptabiliser tous les utilisateurs de la plateforme, la route est /users/count.
