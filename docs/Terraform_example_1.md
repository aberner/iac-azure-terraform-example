
## Add a webserver and some random content to the webserver

This example depends on the [Example 1 - Setup a linux virtual machine](Terraform_example_1_1.md)

Add the following snipplet to the resource *"azurerm_linux_virtual_machine"*:



```
 # It's easy to transfer files or templates using Terraform.
  provisioner "file" {
    source      = "files/setup.sh"
    destination = "/home/${var.linux_admin_user}/setup.sh"

    connection {
      type     = "ssh"
      user     = var.linux_admin_user
      password = var.linux_admin_password
      host     = azurerm_public_ip.azure-web-ip.ip_address
    }
  }

  # This shell script starts our Apache server and prepares the demo environment.
  provisioner "remote-exec" {
    inline = [
      "chmod +x /home/${var.linux_admin_user}/setup.sh",
      "sudo /home/${var.linux_admin_user}/setup.sh",
    ]

    connection {
      type     = "ssh"
      user     = var.linux_admin_user
      password = var.linux_admin_password
      host     = azurerm_public_ip.azure-web-ip.ip_address
    }
  }
  ```

  This snipplet references a setup.sh file in the repo that adds Apache to the server, and dummy a index.html with some stupid content.

  ## Example

  This branch shows how this is done:
  - https://github.com/aberner/iac-azure-terraform-example/blob/add-webserver-to-server/azure-main.tf