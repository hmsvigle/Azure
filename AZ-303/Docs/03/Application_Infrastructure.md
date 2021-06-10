## 3.3.1 Implement Application Infrastructure: 

### A. Create and configure Azure App Service

* Azure Web App Service, is the service, where we can publish our Web Application.
* Based on the Webapp Plan selected, we can chose the underlying VM/Infra for hosting the Web application.
  * .Net core --> Windows/Linux VMs | ASP .Net --> Only on Windows
* Locally developed webapp code can be published to the Webapp Service created.
* 


### B. Create an App Service Web App for Containers


### C. Create and configure an App Service plan


### D. Configure an App Service

* Web App Service -> Configure -> General Settings --> `Connection Strings` 
  * Connection string is encrypted, addressed and is transmit over an encrypted channel. This String details can be used in Local code to connect to Web App Svc.
  * Always On --> App doesnt go down in case of inactivity (0 requests)
  * Remote debugging & Local visual Studio Code version can be configured to connect
* Web App Service -> `Authentication` -> 
* Web App Service -> `Backup` --> # App Service Plan should be `Standard/ Higher`
* Web App Service -> `Scale up/down` at any point of time.
* Web App Service -> Networking --> 
  * `Vnet Config` : 
  * `Hybrid Config` : To connect to Onprem VMs 
  * `Azure Front Door + WAF` : Enable Firewall for Web App
  * `CDN` : Content Delivery Network for make data reachable to Customer based on Location.
  * `Access Restrictions` : Block certain IPs to acess Webapp



### E. Configure networking for an App Service


### F. Create and manage deployment slots


### G. Implement Logic Apps:

* Azure Logic Apps is to create Workflows based on triggers.

  <img src="https://user-images.githubusercontent.com/24938159/121544268-36642480-ca27-11eb-8d61-0777c0abda20.png" width="600">

* **Connectors:**
* 
  <img src="https://user-images.githubusercontent.com/24938159/121544879-a96d9b00-ca27-11eb-8795-c0e141ead40a.png" width="600">


### H. Implement Azure Functions
