
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

### 7.1 What is Governance in Azure?

   There are various areas to Azure management. Following diagram clears the complete picture. For now lets focus on Givernance. Other topics, we can see later. Official Documentation can be referred [Here](https://docs.microsoft.com/en-us/azure/governance/azure-management).
  
  ![Governance-1](https://user-images.githubusercontent.com/24938159/85433974-eb959680-b5a2-11ea-8785-3c760a5916a1.JPG)

#### All component of Azure Governance: 
   1. **Monitor** is collecting and analyzing data to audit the performance, health, and availability of your resources.
   2. **Configure** refers to the initial deployment and configuration of resources and ongoing maintenance.
   3. **Secure** Managing the security of your resources and data i.e (accessing threat & compliance of resources/applications).
   4. **Protection** refers to keeping your applications and data available, even with outages that are beyond your control.
   5. **Migration** refers to transitioning workloads currently running on-premises to the Azure cloud
   6. **Governance** is one aspect of Azure Management. It provides mechanisms and processes to maintain control over your applications and resources in Azure. It comes with 2 services i.e
      - **Azure Policy**: Allows to create, assign, and manage policy definitions to enforce rules for your resources
      - **Azure Cost Management**: Tracks cloud usage and expenditures for your Azure resources
      
### 7.2 What are Azure Management Groups ?

   * Management groups sit above your subscription & All subscriptions managed by management group.
   * Use Management groups to assign policies, RBAC and for the visibility of the centralized billing information.
   * Management groups can support 6 level of depth (Excludes root MG & subsccription levels) which means you can have one management group part of another management group, this is very helpful for larger organizations with multiple departments or geography. Management groups can be subdevided as per Geography/Department/Billing/Application/Environment; all depends on the organizational structure. 
   * 10,000 management groups can be supported in a single directory(AAD).
   * By default, the root management group's display name is Tenant root group. The ID is the Azure Active Directory ID. It can not be deleted/moved.

  ![Management-grp-1](https://user-images.githubusercontent.com/24938159/85438382-8d1fe680-b5a9-11ea-8aaa-0c44f932acf4.JPG)
   
### 7.3 Expected Tasks on MG:
   
   1. Create/Delete/Rename MG 
   2. Move MG under another MG
   3. Add subscription to MG

#### Create Management Group

   * Through Power Shell [commands](https://docs.microsoft.com/en-us/powershell/module/az.resources/new-azmanagementgroup?view=azps-4.3.0)
   
   ```sh 
    # Create MG under root MG
    $ New-AzManagementGroup -GroupName 'Contoso' -DisplayName 'Contoso Group'
    
    # Create under a different Parent MG
    $ $parentGroup = Get-AzManagementGroup -GroupName Contoso
    $ New-AzManagementGroup -GroupName 'ContosoSubGroup' -ParentId $parentGroup.id
   ```

   * Through Azure CLI [commands](https://docs.microsoft.com/en-us/cli/azure/account/management-group?view=azure-cli-latest#az-account-management-group-create)
   
   ```sh
    # Create MG under root MG
    $ az account management-group create --name Contoso --display-name 'Contoso Group'
    
    # Create under a different Parent MG
    $ az account management-group create --name ContosoSubGroup --parent Contoso
   ```
   
#### Delete Management Group



## IMP from Interview Point of View
### Challeneges in MG: 
 * [Link-1](https://docs.microsoft.com/en-us/azure/governance/management-groups/overview#trouble-seeing-all-subscriptions)

   
   
   
   
   
   
   
   
   
   
