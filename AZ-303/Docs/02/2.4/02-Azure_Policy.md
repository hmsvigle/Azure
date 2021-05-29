## 2.4.7 Azure Policy:

### 2.4.7 Configure an Azure Policy:

* Add Resource --> Policy --> Search category (Compute) --> Select Scope (Iaas Antimalware) --> Select Subscription/RG --> Exclude necessary RGs/Resources --> Auto-Audit --> Non-Compliance Msg --> Deploy
* Policy --> Shows a compliant Resource.
  * VM --> Extensions --> Add AntiMalware extension
  * Policy --> Defination --> Select Category(Compute) --> Scope(Deploy Iaas AntiMalware extension if not deployed) --> Select Subscription --> Select RG --> Select Remidiation (Action to make resource compliant to the policy) --> The Resource becomes auto-compliant (Policy installs AntiMalware)
* Policy --> Overview --> Delete Policies Assignment.


### 2.4.8 Azure BluePrints:


