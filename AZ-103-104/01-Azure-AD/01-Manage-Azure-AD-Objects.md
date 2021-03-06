
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
    
   ![AAD-2](https://user-images.githubusercontent.com/24938159/84875942-45c6c100-b0a4-11ea-9f34-1d3c2155c2ab.JPG)

   ![AAD-3](https://user-images.githubusercontent.com/24938159/84875956-4a8b7500-b0a4-11ea-94ae-55e25038c9b0.JPG)
   
   * Once the tasks completed, the certificate id (from windows machine) obtained is same as the device-id registered in `Azure AD -> Devices`
    
   * Now run the command `dsregcmd /status` once again & you would find the `AzureAdJoined : Yes` & Once the device is logged in with corpid, then `AzureAdPort` will be set to `Yes` 
   > I am already connected to Azure AD, so my device says connected in the above screenshot. 
   *  `AzureAdPort` is set to Yes --> Azure AD Joined Devices & No --> Azure AD Registered Devices
   
       
   ### 7. Configure self-service password reset 
   
   Navigate to `ADD -> Password Reset`
   * `Properties`: enable self-service password reset for All/Selected/None
   * `Authentication Menthods`: Select methods (mobile/email/ofc phone/security qns)
                           
    
   ### 8. NOT: Azure AD Connect; PIM

   * `Azure AD Connect`:- is required to sync off-prim Azure AD to On-prim Azure ADDS (Active Directory Domain Service)
   * `Azure AD Connect Health`:- Checks status of our sync e.g : Sync Errors, Sync Users/Data mismatch etc.
   
   ![aad-connect](https://user-images.githubusercontent.com/24938159/84909244-12e7f180-b0d3-11ea-93e5-e5b32bdc7a4e.JPG)
   
   #### Authentication Designs:
   
   * Cloud Authentication
     - Cloud Only
     - Password hash Sync + Seamless SSO
     - Pass-Through Authentication + Seamless SSO
   
   * Federated Authentication
     - AD FS
     - 3rd party Federation Providers
     
   ![Authentication-1](https://user-images.githubusercontent.com/24938159/84910475-8cccaa80-b0d4-11ea-8465-a201741e14cd.JPG)

   - Password hash Sync + Seamless SSO:  AD Connect Diagram (Above)
      * Password-hash method is integrated feature of AD-Connect. So no extra setup required to enable this.
      
   - Pass-Through Authentication + Seamless SSO:
     * Autosync is taken care by AD-Connect every 2 minutes as in Password-Hash method
     * For Authentication works by setting up 2-3 Authentication-Agents On-Premise platform.
     * When user tries to login Password is validated as synched by AD-Connect. 
     * However authentication process goes through Pass-Through setup. For this, pre-requisite is `The Authentication-agents should have outbound internet access.`
     * Along with this, as back-up, Password-hash technique can also be implemented.
   
   ![Authentication-2](https://user-images.githubusercontent.com/24938159/84912462-17aea480-b0d7-11ea-8984-335db2c32250.JPG)
   
   - 3rd party Federation Providers:
     * When the user tries to login, He will be redirected to Federation-Proxy, setup in perimeter & ADFS is running on On-Premise servers.
     * ADFS checks with AD to validate the credentials before acknowledging the client-request.
     * Mean while as usual, AD-Connect syncs up data every 2 minutes with On-Prim AD.
     
   ![Authentication-Fd-3](https://user-images.githubusercontent.com/24938159/84912332-f77ee580-b0d6-11ea-9c31-708f30450cca.JPG)
