## What is this?
Shell script for creating kvm ubuntu guest with virsh

## How to use?
Edit create.sh to set machine name, cpus, memory, disk, etc.
Run ```./create.sh```

## Post install
I recommend enabling the serial console:
```
sudo systemctl start serial-getty@ttyS0.service
sudo systemctl enable serial-getty@ttyS0.service
```
