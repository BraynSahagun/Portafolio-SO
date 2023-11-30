#!/urs/bin/env /urs/bin/python3
from difflib import SequenceMatcher
import subprocess
import re
import os

def run_cmd(cmd, get_output=True, timeout=35, stop_on_error=True):
    "Run cmd logging input and output"
    output = ""
    try:
        if get_output:
            p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, universal_newlines=True)
            output, err = p.communicate(timeout=timeout)
            rc = p.returncode
        else:
            result = subprocess.check_call(cmd, stderr=subprocess.STDOUT, shell=True, timeout=timeout)
    except subprocess.CalledProcessError as e:
        if stop_on_error:
            msg = 'Failed sudo_cmd: %s' % (e.returncode, str(e))
    except Exception as e:
        if stop_on_error:
            msg = 'Failed sudo_cmd: %s' % str(e)
    return output

#proc = lambda x: subprocess.Popen(x, stdout=subprocess.PIPE, stderr=/dev/null)

#Valid chars . a-z 0-9

def check(test_str):
    pattern = r'[^\.catflypgxe*\-\s]'
    if re.search(pattern, test_str):
        print ('Invalid char in command %r, only chars in brackets are allowed [.catflypgxe*- ]\n' % (test_str,))
        print ('Char not permitted.')
    else:
        try:
            output = run_cmd(cmd, get_output=True, stop_on_error=True)
            print (output)
        except OSError:
            print ('Unknown error.')

while True:
    try:
        s = input('CTF jail1 >>')
    except:
        break

    try:
        cmd = re.split(r'\s+', s)
        cmd = s
        check(cmd)
    except OSError:
        print('Unknown error.')