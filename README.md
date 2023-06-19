# RezolveChatBot
Chat bot  who are associated with the Rezolve AI 


Instruction for chat bot:
1. Place the button and provide the action method
2. Inside the action method, place the following code:

let webViewController = RezolveChatBot()
        webViewController.tenantName = "xxxxx"
        let navigationController = UINavigationController(rootViewController: webViewController)
        self.present(navigationController, animated: true, completion: nil)

3. Replace the tenant name "xxxxx" with your tenant name.

Instruction to Change the environment - please mention the branch name as:

If in case of production pointing environment : prod

If in case of staging pointing environment : staging

<img width="741" alt="Environment_change" src="https://github.com/a-science/RezolveChatBot/assets/1118654/31020d07-b1c0-4451-8971-56bc936b8191">

Instruction for updating the package:
1. Right click on the package.
2. Choose the option "Update package".
