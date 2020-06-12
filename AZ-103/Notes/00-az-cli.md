### Basic az-cli commands

* List acount details
` $ az account list  --output table`  OR  `$ az account list`
```sh
Name                    CloudName    SubscriptionId    State    IsDefault
----------------------  -----------  ------------------------------------  -------  -----------
Concierge Subscription  AzureCloud   57211a4e-0490-4289-b3c7-041b4a1efeb3  Enabled  True
```

* List all resource groups
` $ az group list --output table`  OR  `$ az group list`
```sh
Name                                        Location    Status
------------------------------------------  ----------  ---------
learn-c4c5f3a1-771f-4c09-acdf-af4544149a9e  westus      Succeeded
```

* List all Resources unser the ResourceGroup (by passing as parameter). 
```sh
$ az resource list  \
   --resource-group learn-c4c5f3a1-771f-4c09-acdf-af4544149a9e --output table`
```
```sh    
Name                  ResourceGroup                               Location      Type                               Status
--------------------  ------------------------------------------  ------------  ---------------------------------  --------
cloudshell1936593578  learn-c4c5f3a1-771f-4c09-acdf-af4544149a9e  centralindia  Microsoft.Storage/storageAccounts
```
* We can further filter out by passing parameter as `--resource-type Microsoft.Web/sites`

* Stop the webapp by az-cli
```sh
az webapp stop \
    --resource-group learn-c4c5f3a1-771f-4c09-acdf-af4544149a9e \
    --name <web app name>
```

* Webapp can be restarted by following command
```sh
 $ az webapp start \
    --resource-group learn-c4c5f3a1-771f-4c09-acdf-af4544149a9e \
    --name <web app name>
```
