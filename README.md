# RezolveChatBot
Chat bot  who are associated with the Rezolve AI 


Instruction for chat bot:
1. Place the button and provide the action method
2. Inside the action method, place the following code:

let webViewController = RezolveChatBot()
        webViewController.tenantName = "xxxxx"
        let navigationController = UINavigationController(rootViewController: webViewController)
        self.present(navigationController, animated: true, completion: nil)

3.Replace the tenant name "xxxxx" with your tenant name.(line no. 10)
4.Replace "Chat with us" to mention your bot name.(line no. 12)
Instruction to Change the "version rule" - please mention the branch name as:

If in case of production pointing environment : "prod"

If in case of staging pointing environment : "staging"
<img width="741" alt="Environment_change" src="https://github.com/a-science/RezolveChatBot/assets/1118654/4abdb80f-7cd1-462a-a003-297391899e04">


Instruction for updating the package:
1. Right click on the package.
2. Choose the option "Update package".
