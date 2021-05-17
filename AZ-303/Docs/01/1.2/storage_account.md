* create resource -> create storage_account -> `Unique Name`
  * Performance: 
    * Standard: blob, file, queue, table, datalake
    * Premium: service specic (blob/file/queue/table)
  * Redundancy: LRS/ZRS / GRS / GZRS
  * Protection: 
    * Enable soft delete for blobs: can be restored back after certain days
* Options inside SA:
  * Containers: like a directory. 
    * protection: private (no aunonymous access), blob , <>
    * Upload data as blob. (considered as object in blob)
* Usecase:
    * A webapp uses storage acc to store its videos/data files. 
    * How to access storage-acc from the app: (diff topic)
    * `File Share`: A drive/containers can be mapped to a fileshare.  
        * create quota for fileshare
        * add directories in it & then upload files.
    * `blob`: stores as object; access through URL.
* Azure Storage Explorer:
    * Download the tool to local. Login to azure through explorer.
    * Copy azure key1 from portal: storage-account -> access keys -> copy key/name & configure to storage explorer to handle further modifications.




* Authorize user/app to access services in storage account:
  1. `Access Keys`:
    * Under SA -> Access Keys -> show keys
      * Copy only Key1/Key2 & it can be configured in azure storage explorer to connect to SA.
        * In `azure storage explorer` Add storage account.
        * Provide key, acc name & then connect.
        * Once done, dettach the account in `azure storage explorer`
      * Access Key gives full authorization to `all resources` (blob/file-share/tables etc)
  2. Shared Access Signature (SAS Token): 
      SAS can be generated at SA label/Blob Lavel
    * Blob-Lavel:
      * Go to SA -> container -> blob -> Generate SAS -> key (provide expiry date)
      * Copy the SAS blob URL & try to access it from browser --> Works
    * Account lavel:
      * Go to SA  -> Shared Access Signature(Left) -> Select services (blob/table/queue) -> Allowed resources (Select all --> Generate SAS Token (key1) (provide expiry date)
      * Configure the SAS Toekn URL in `azure storage explorer` & add account. Then respective services can be accessed 
  3. Stored Access policy:
    * SA -> containers -> `Access Policy` -> `Add policy`  -> provide name & expiry time 
	  * With SAS token -> Associate `Stored Access Policy`, so that the expiry date/time & scope can be controlled with `Stored Access Policy`
	    * Storage Account -> Storage Explorer -> select blob -> `generate Shared Access Signature` -> Select above created policy -> 
    * Later point of time, if needed to pre-expire the access, just edit the `Stored Access Policy` & its applicable to the container.
  4. Active Directory Authentication:
    * In Azure AD, create a user & go to SA -> IAM -> Add role assignment -> add role & user.

* Usecase:
  * 1st pref: Azure AD approach. 
  * 2nd Pref: Shsared Access Signature (SAS Token)
  * 3rd Pref: Access Keys (Last)

   
