import pexpect
import os
import sys
import time

user = 'root'
password = sys.argv[1]
cmd = "git pull origin dev"


def shell_login():

    child = pexpect.spawn(cmd, encoding='utf-8', echo=True)
    child.expect("/id_rsa':")
    child.sendline(password)
    status = child.expect(pexpect.EOF, timeout=None)
    print(status)


time.sleep(5)
os.chdir("C:\inetpub\wwwroot")
#os.system("pwd")
time.sleep(5)
#os.system("ls -l")
time.sleep(5)
shell_login()
time.sleep(5)
os.system("git log -1")
