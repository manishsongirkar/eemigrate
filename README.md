eemigrate
=========

EasyEngine (ee) Site Migration Addon. Using this addon user (Sudo Privilege User) can migrate site from local to remote and remote to local server. Also using wp-cli command, it will replace strings in database itself.

#### Setup eemigrate addon
```bash
curl -sL goo.gl/X3Hn8t | sudo bash 			# Install eemigrate addon
```

#### Run following command after eemigrate setup
```bash
source /etc/bash_completion.d/eemigrate
```

#### Examples

Site Migrate from `Local System` to `Remote Server`
```bash
eemigrate push example-local.com example-remote.com
```

Site Migrate from `Remote Server` to `Local System`
```bash
eemigrate pull example-remote.com example-local.com
```
#### Dependency
Make sure [WP-CLI](http://wp-cli.org/) is installed on Local and Remote server, as its used for Search and Replace strings in Database.
