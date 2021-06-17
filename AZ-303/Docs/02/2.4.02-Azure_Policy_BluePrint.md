## 2.4.7 Azure Policy:

### 2.4.7 Configure an Azure Policy:

* Add Resource --> Policy --> Search category (Compute) --> Select Scope (Iaas Antimalware) --> Select Subscription/RG --> Exclude necessary RGs/Resources --> Auto-Audit --> Non-Compliance Msg --> Deploy
* Policy --> Shows a compliant Resource.
  * VM --> Extensions --> Add AntiMalware extension
  * Policy --> Defination --> Select Category(Compute) --> Scope(Deploy Iaas AntiMalware extension if not deployed) --> Select Subscription --> Select RG --> Select Remidiation (Action to make resource compliant to the policy) --> The Resource becomes auto-compliant (Policy installs AntiMalware)
* Policy --> Overview --> Delete Policies Assignment.


### 2.4.8 Azure BluePrints:


<img src="https://user-images.githubusercontent.com/24938159/120071167-a1b70980-c0ab-11eb-9757-b9ca8d70a419.png" width="600">

