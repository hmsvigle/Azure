
## [2.1.1Azure Backup Service (Recovery Service Vault):](https://docs.microsoft.com/en-us/azure/backup/backup-overview)

* An Agent is installed on VM
* It takes snapshot of Disk of VM - Windows : App consistent backup & Linux - File consistent backup
* Backup is stored as restore-point (daily basis) at Service Recovery Vault.
* These backups can eb restored to new File/VM/Disk & can be mapped to either existing/new VM.
* This Service recovery vault has to be deployed in the same region.
 


![image](https://user-images.githubusercontent.com/24938159/119226591-8a19d700-bb27-11eb-91a1-35d67aafa116.png)
