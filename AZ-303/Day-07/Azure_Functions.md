## Azure Functions
- Azuure App services is a platform - PaaS/serverless. On Azure App services --> Functions/webapp/API
- You can go and deploy a single function/API in the cloud
- Azure Functions is the serverless computing service hosted on the Microsoft Azure public cloud.
- Practical scenarios
  - If I have lot of helper functions which are common across multiple applications
    - cleaning up some files from storage accounts at the end of the day
    - Archiving data in DB
    - 2-3 SMALL Functions, at the end of every hours, i want to send reminder to team
    - If a new file is placed by customer in the storage, I want to send an email to the team

  - Microservices
    - Ex. Payment services, checkout services, product catalog service

- Micro-micro services

## Exam Questions
- I can deploy azure functions in 2 ways
     - App svc plan
       - You pay for infra
     - Consumption plan (very cheap)
       - You pay for every execution

-In case load increase, for ASP you have to scale. - configure auto or manual scale
- But in case of consumption plan, you dont have to configure scaling. It can handle as many requests as you want.

- All the features of web app, it also applies to azure functions.
   - Deployment slots
   - Access restrictions

- There are 2 components of azure functions
  - Trigger
    - When and how my function will execute?
    - Timer - Function will execute at a time
    - Http trigger - you will get a url for every function. If someone hits the url, the function will execute.
    - Service bus trigger/ Event bus trigger
  - Action
    - What code will execute?
    - You will write your code (.NET/Python/Java)
