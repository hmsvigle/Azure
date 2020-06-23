
# Manage subscriptions and governance
   1. Configure Azure policies
   2. Configure resource locks
   3. Apply tags
   4. Create and manage resource groups
      * Move resources
      * Remove RGs
   5. Manage subscriptions
   6. Configure Cost Management
   7. Configure management groups

## 7. Configure Management Groups:

### What is Management Groups in Azure?
   There are various areas to Azure management. Following diagram clears the complete picture. For now lets focus on Givernance. Other topics, we can see later. Official Documentation can be referred [Here](https://docs.microsoft.com/en-us/azure/governance/azure-management).
  
  ![Governance-1](https://user-images.githubusercontent.com/24938159/85433974-eb959680-b5a2-11ea-8785-3c760a5916a1.JPG)

   * **Monitor** is collecting and analyzing data to audit the performance, health, and availability of your resources.
   * **Configure** refers to the initial deployment and configuration of resources and ongoing maintenance.
   * **Secure** Managing the security of your resources and data i.e (accessing threat & compliance of resources/applications).
   * **Protection** refers to keeping your applications and data available, even with outages that are beyond your control.
   * **Migration** refers to transitioning workloads currently running on-premises to the Azure cloud
   * **Governance** is one aspect of Azure Management. It provides mechanisms and processes to maintain control over your applications and resources in Azure. It comes with 2 services i.e
      - **Azure Policy**: Allows to create, assign, and manage policy definitions to enforce rules for your resources
      - **Azure Cost Management**: Tracks cloud usage and expenditures for your Azure resources
      
#### Azure Management Groups:
   * Management groups sit above your subscription & All subscriptions managed by management group.
   * Management groups can support 6 level of depth which means you can have one management group part of another management group, this is very helpful for larger organizations with multiple departments or geography.
   * Use Management groups to assign policies, RBAC and for the visibility of the centralized billing information.
   * Management groups can be subdevided as per Geography/Department/Billing/Application/Environment; all depends on the organizational structure. 
   
   
   
   
   
   
   
   
   
   
