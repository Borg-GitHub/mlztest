# mlztest
mlztest

# My ARM Blue-Button Deployment

This repo hosts an ARM template + parameters to deploy into Azure Commercial Cloud in one click.

## How to deploy

Click the button below; you’ll be taken to the Azure Portal’s custom-deployment screen with the template & parameters pre-loaded:

[![Deploy to Azure](https://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FBorg-GitHub%2Fmlztest%2Fmain%2Fazuredeploy.json/parameters/https%3A%2F%2Fraw.githubusercontent.com%2FBorg-GitHub%2Fmlztest%2Fmain%2Fazuredeploy.parameters.json)

---

## Files

- **azuredeploy.json**  
  The ARM template that defines all resources.

- **azuredeploy.parameters.json**  
  Default parameter values (location, names, etc.).

---

When you click “Deploy to Azure”:  
1. Choose your subscription and resource group (or create a new one).  
2. Review/edit any parameter values (e.g. `location`).  
3. Click **Review + create** → **Create**.  
4. Azure will provision everything as specified in the template.

That’s it—your ARM template is now a “blue-button” GitHub deployment into Azure Commercial Cloud.
