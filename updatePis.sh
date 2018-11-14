#!/bin/bash

rsync -av -e ssh Sampler-Sampler pi@192.168.100.101:~/test_builds# 
ssh -t pi@192.168.100.101 'sudo reboot' 
rsync -av -e ssh Sampler-Sampler pi@192.168.100.102:~/test_builds# 
ssh -t pi@192.168.100.102 'sudo reboot' 
rsync -av -e ssh Sampler-Sampler pi@192.168.100.103:~/test_builds# 
ssh -t pi@192.168.100.103 'sudo reboot'
