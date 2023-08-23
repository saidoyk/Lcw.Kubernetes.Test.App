Projede yaptıklarım:  
  
1- Local bilgisayara minikube ve kubectl ve docker kurulumu yapıldı. "minikube start --nodes 4" komutu ile 3 worker 1 master kurulumunu otomatik olarak gerçekleştirildi.  
2- Docker file oluşturuldu, build edildi ve koşuldu.  
3- yaml dosyaları hazırlanarak worker'lara deploymentı yapıldı.  
4- Jenkins kurulumu yapıldı daha sonra jenkins pipeline'nı oluşturularak, yapılan işler otomatize edildi.  
5- service için LoadBalancer kullanılarak yaml dosyası hazırlandı.  
6- EKSİK  
7- EKSİK  

Projede beklenenler:  
  
1- Minikube, multipass, docker desktop,rancher destop vb. bir uygulama ile bir master üç worker
node’lu kubernetes clusterı kurulumunu yapın. Fiziksel bilgisayarınız kaynakları yetersizse
Azure, GCP veya AWS’den free tier hesap açarak sunucu kurabilirsiniz.  
2- Örnek olarak paylaşılan NetCore 3.1 projesinin dockerfile oluşturup. Docker ortamlarında uygulamayı
çalışı abilecek durumu gaetirilmesi.  
3- Uygulamaının kubernetes ortamlara deploymentı. Deployment yaml veya helmyapıla bilir.  
4- Bir CI-CD tool ile localde kurulan kubernetes ortamlarına deployment’ın yapılması. Azuredevop free,
Jenkins, CircleCI, Gitlab gibi bir tooll kullanılarak. Terhihen  
5- Kubernteste çalıştırılacak utgulamaya erişme için Kubernetes NodePort vs LoadBalancer vs Ingress
den biri ile dışarı açılması.  
6- Deploymnet yaml livenessprobe ve readinessprobe eklenmesi .“ /ping” adresini kontrol path olarak
kullana bilir.  
7- Azuredevops, gitlab, jenkins uygulamalarından birisi ile CI-CD oluşturup kubernetes ortamına
deployment yapılması.  
