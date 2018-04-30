# connect-ssh.sh
Connect to SSH server.

## Usage
You may create a config file named `.sshservers` in your home directory.  
The format is *{alias}* *{server name}* *{port number}*.  
The file look like this.

```
main user1@foo.com 22
second user2@bar.tech 2222
```

For example, to connect to the main server type `./connect-ssh.sh main`.
