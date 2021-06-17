# Virtual Machines:

### 1.4.1 High Availability for VM :
  * Ideally SLA for VM - 99.9%, with Availability_Set: 99.95%, Availability Zones: 99.99%
  * No Additional cost for Av_Set/Av_Zones. Only the extra cost for communication among DCs in the Av_zones.
  * [**Availability Set vs Availability Zones**](https://github.com/hmsvigle/Azure/tree/Az-303-My-Notes-V2/AZ-303/Edureka/Day-02#availability-set-vs-availability-zone)
    * *[Suggestion]* If VM is part of Availability_Set => Use `Managed Disks` 
    * *[Suggestion]* Front-end & Back-end => Configure 2 diff availability Sets 
    * Falut-Domain = 3 (Max) & Update Domain = 20 (max)
    * *[Imp_Note]* While creating a new VM only, we can assign that to an Av_Set. We cant assign it to any AV_Set after VM is deployed. 
    
    ![image](https://user-images.githubusercontent.com/24938159/118667406-a0672080-b811-11eb-83ff-1ecc262c605e.png)

  * **1.4.4 Dedicated Host:**
    * Large organizations can opt for dedicated host i.e entire underlying hardware, where they can host thier own VMS. 
    * They can control the downtime/any maintenance activity related to that host.
    * No other company can host thier VM onto those dedicated hosts.
    * Min requirement is to subscribe for 96vcpus allocated to subscription.

  * **1.4.5 VM Scale Sets:**
    * VM Scale Set is the resource, which starts with min set of VMs & can extend upto a Max no of identical VMs.
    * How to balance loads betwn multiple VMs, Scale Set is used i.e `Auto sclaing up/down` of the VMs based on some conditions.
    * Scale set allows to manage `identical VMs`
    * It provides better redudancy for VMs.
    * When Scaleset scales up the instance, the new VM will be only the replica of 1st, but the applications will not be installed/run on the other vm.
    * Scaleset is basically tied up with LB. So new requests to newly scalled VMs, will be routed from the LB of scale set.
    * While creating Scale set, we can select multiple Av_Zones, so that the scalled VMs will be spinned in diff zones.
    
   ![image](https://user-images.githubusercontent.com/24938159/118679964-f93bb680-b81b-11eb-80b9-fec1a5861a83.png)   

### 1.4.6 Configure Azure Disk Encryption:

### 1.4.3 Select virtual machine size:

### 1.4.7 Create VM Image:
  * This process called : Generalization of VM.
  * Its a destructive process i.e the VM used to create the image, cant be used further.
  * The process: 
    * S/w required to perform this task should be installed in the VM to proceed with it.
    * Inside the VM, go to system32/sysprep, execute `sysprep` -> Generalize --> Shutdown 
    * Stop the VM: `Stop-AzVM -ResourceGroupName azuredemo -Name <VM_Name> -Force`
    * Now in protal, `Capture Image` -> provide input -> Done
    * Search Image in portal, you would find it available.


