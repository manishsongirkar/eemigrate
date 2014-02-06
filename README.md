eemigrate
=========

EasyEngine (ee) Site Migration Addon. Using this addon user (Sudo Privilege User) can migrate site from local to remote and remote to local server.

After site migration, you will need to update domain name in URL structure. You can use [Search and Replace](http://wordpress.org/plugins/search-and-replace/) plugin to update domain name.

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
