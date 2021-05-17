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



   
