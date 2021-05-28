## 2.1 Manage workloads in Azure


### 2.1.1 Migrate workloads using Azure Migrate:
  
*  ### Azure Migrate Service:

<img src="https://user-images.githubusercontent.com/24938159/119918724-a2a24b00-bf86-11eb-8461-c41e8f6d8fec.png" width="500">


### [2.1.2 implement Azure Backup for VMs:](https://docs.microsoft.com/en-us/azure/backup/backup-azure-vms-introduction)

* **Azure Recovery Service Vault:** Backups are stored in a Recovery Services vault with built-in management of recovery points. 
* As part of the backup process, a `Snapshot` is taken, and the data is transferred to the Recovery Services vault with no impact on production workloads.
* Snapshots can be taken with different labels of [consistency:](https://docs.microsoft.com/en-us/azure/backup/backup-azure-vms-introduction#snapshot-consistency)
  * Application-consistent
  * File-system consistent
  * Crash-consistent

<img src="https://user-images.githubusercontent.com/24938159/119970830-d5bbfd00-bfcd-11eb-9734-d681b2456540.png" width="500">


### 2.1.3 implement disaster recovery

* **Azure Site Recovery Service:** Used to replicate data to secondary region to avoid any sort of disaster.
  *  `For VMS`: 
    *  VM -> Disaster Recovery -> 
   
   
   <img src="https://user-images.githubusercontent.com/24938159/119919061-412eac00-bf87-11eb-8b88-aa1b231a177b.png" width="500" >
   
   <img src="https://user-images.githubusercontent.com/24938159/119919015-265c3780-bf87-11eb-917c-7c5e07df1d76.png" width="500">
   
   
   <img src="https://user-images.githubusercontent.com/24938159/119919570-56f0a100-bf88-11eb-82e8-91c540b3ba48.png" width="600">

 
### [2.1.4 Implement Azure Update Management:](https://docs.microsoft.com/en-us/azure/automation/update-management/overview)

* To manage OS upgrade in VMs, Azure Update Management service is used.
* Log 


<img src="https://user-images.githubusercontent.com/24938159/119972313-aefec600-bfcf-11eb-9d16-34ab5dba36d5.png" width="600">





