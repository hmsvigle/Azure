
# Manage Azure identities and governance (15-20%) 

  * Manage Azure AD objects 
  * Manage RBAC
  * Manage Subscription & Governance
 
 In this Section we will cover 1st topic in detail.
 
 ## A. Manage Azure AD objects 
    
   1. Create users and groups 
   2. Manage user and group properties 
   3. Manage guest accounts
 > Note: Above 3 points are covered in detail [Lab-1](https://github.com/MicrosoftLearning/AZ-104-MicrosoftAzureAdministrator/blob/master/Instructions/Labs/LAB_01-Manage_Azure_AD_Identities.md)
   4. Perform bulk user updates
   5. Manage device settings
   6. Configure Azure AD Join
   7. Configure self-service password reset
   8. NOT: Azure AD Connect; PIM
   
   
   #### Note for Lab-1:
   * This is necessary in order to assign an Azure AD Premium P2 license to your user account. 
   * Azure AD Premium P1 or P2 licenses are required in order to implement dynamic groups.
       - User Settings -> Usage location to United States. 
   * Create Dynamic queries: 
 
 
   ### 4. Perform bulk user updates 
   To be updated ...
   
   ### 5. Manage device settings 
   To be updated ...
   
   ### 6. Configure Azure AD Join 
   * This [Doc](https://docs.microsoft.com/en-us/azure/active-directory/devices/azureadjoin-plan) covers detailed documentation
   * Azure AD join allows you to join devices directly to Azure AD without the need to join to on-prem AD
   * 3 ways to register a device: 
     * Azure AD registered: Personal devices registered with signed in account
     * Azure AD joined : Organizational Devices registered
     * Hybrid AD Join:
     
   #### AD Join: 
   Lets add a Windows 10 device. Followings are the steps
   * cmd -> hostname -f 
         -> dsregcmd /status => Chack for "AzureAdJoined" & "AzureAdPort" 
         
     ![az-1](https://user-images.githubusercontent.com/24938159/84591293-d4480200-ae5a-11ea-9713-712c3da55fd7.JPG)
   
   * open `Event Viewer` to check logs while device getting added i.e 
    `Event Viewer --> Application & Service Logs --> Microsoft --> Windows --> user Device Registration --> admin` directory
   * Now open `Windows Start --> Access work or school --> Connect` --> Click on `Join this device to Azure AD` & add email & password to register

   ![az-2](https://user-images.githubusercontent.com/24938159/84591480-66043f00-ae5c-11ea-8c8e-1bdc8feb59eb.JPG)
    
   * Once the tasks completed, the certificate id (from windows machine) obtained is same as the device-id registered in `Azure AD -> Devices`
    
   * Now run the command `dsregcmd /status` once again & you would find the `AzureAdJoined : Yes` & Once the device is logged in with corpid, then `AzureAdPort` will be set to `Yes` 
   > I am already connected to Azure AD, so my device says connected in the above screenshot. 
   *  `AzureAdPort` is set to Yes --> Azure AD Joined Devices & No --> Azure AD Registered Devices
   
       
   ### Configure self-service password reset 
   
   ### NOT: Azure AD Connect; PIM






