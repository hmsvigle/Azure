## 2.4.01 RBAC:

### 2.4.1 Roles:

* Role: Its a json doc with every access defined.
* Roles also get inherited to down resources.
* [In-Built Roles](https://docs.microsoft.com/en-us/azure/role-based-access-control/built-in-roles)
  * **Contributor Role:** 
    * It allows  user to manage all types of resources, but does not allow the user to grant access to resources.
    * To allow a user to have the ability to grant access to resources, the user must be granted either the User Access Administrator Role or the Owner Role
  * **User Access Administrator Role:**
    * Here the user can manage the access to resources. Here the user would be able to read all resources. But the user can't modify resources
  * **Virtual Machine Contributor Role:**
    * This allows to manage the properties of the Virtual Machine. This though will not provide access to the underlying virtual network or the storage accounts the virtual machine is connected to.
  * **Logic App Contributor Role:**
    * This Role allows one to create and Manage Logic Apps. Azure Logic Apps is a workflow based service. You can also actually try this out
  * **Logic App Reader:**
    * This only allows to read, enable, and disable logic apps, but not edit or update them
  * **Security Read:**
    * This role allows to view recommendations and alerts, view security policies, view security states in `Azure Security Center`
  * **Security Admin:**
    * This role allows one to view security policies/security states/alerts/recommendations, dismiss alerts / recommendations in Azure Security Center & edit security policies.

### 2.4.2 Custom RBAC Role:

* To create a Custom Role at RG: RG --> IAM --> Add Cuastom Role --> Start from (scratch)/json/existing --> select Permission (Compute) --> Select Action & Data Action.
* Add Role Assignment --> Search for Custom role --> Select service principal --> Assign
* To delete Role: IAM --> Roles --> select --> Remove.

### 2.4.3 configure access to Azure resources by assigning roles
### 2.4.4 configure management access to Azure
### 2.4.5 interpret effective permissions
### 2.4.6 set up and perform an access review
