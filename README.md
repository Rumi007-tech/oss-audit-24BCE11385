Open Source Audit Project – Python :

Student Details :

Name: Rudransh Mishra
Roll Number: 24BCE11385

Project Overview :

This project is a simple open source audit that is done using Linux shell scripts and Python. The main idea was to explore how a system works internally and how we can inspect different parts of it using very basic commands. 

Instead of doing something too complex, I focused on practical things like checking system info, installed packages, disk usage, logs, and permissions. This way, I got the practical insight into the Linux and Python integration. 

Why I Chose Python :

I chose Python mainly because I am already a bit familiar with it and its easy to work with. Also, this programming language is widely used in industries, so it makes sense to learn it in depth. 

Another reason is that Python is open source and has a huge community which goes well with the theme of this project. 

Scripts Description 

Script 1: System Identity 

This script displays basic system information such as hostname, current user, OS, and kernel version. It allows a quick check of which machine and environment are being used. 

Script 2: Package Inspector 

This script aims to identify whether Python is installed, display its version, and the installed packages. Therefore, such a step makes sense to know which tools and libraries are installed in the system already. 

Script 3: Disk & Permission Auditor :
Check disk usage, large files in a system. Also, the presence of insecure file permissions, such as 777, is checked (MFT, n.d.). 

Script 4: Log Analyzer 

This script reads system log files and extracts errors or warnings. Thus, the resultant information or reports computed from this script function is useful when debugging or to have a general understanding of whether something is going wrong in the system. 

Script 5: Manifest Generator 

This script creates a simple open source manifesto file. The manifesto covers essential ideas that define open source software such as freedom, collaboration, and transparency. 

How to Run (Linux)

First, give execution permission:
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh

Then run the scripts:
./script1.sh
./script2.sh
./script3.sh
./script4.sh /var/log/syslog error
./script5.sh
