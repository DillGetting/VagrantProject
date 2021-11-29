# VagrantProject
ITS214 Project 
The project is to build several specific environments that might be deployed at an organization. Also, these all need to be deployed in vagrant.

Requirements:

    You must build one vagrant box for each task listed below
    
 1.       One Webserver:
            Must have index page and 404 error pages as your own. (10 points)
            Should also have ftp. (5 points)
            Should have a user: webdev (password: 4TheWeb!) with access to ftp (and ftp only points to htdocs) on the system. (5 points)
            
            
2.        One Email server:
            I should be able to connect to the email server through port 25. (10 Points)
            
            
3.        One database server
            Can connect to the db with users dbdev (password (4TheDB!)  (10 points)
            
            
4.        One server running log and network monitoring tools to monitor the other servers
            This needs to get information from each server both logs and statistics (10 points)
            
5.        One client system with user named client (password: 4TheClient). (5 points)
        
6.        One file server that has at least one shared network file (or similar system like LVM). (10 points).
        
7.        Everything should build from a single vagrant file. (10 points)
    

    
8.    Security; For example, the webserver should have port 80 open, ftp, and ssh--but nothing else. (10  points)
    
9.    All servers should have an admin user: admin (password: 4TheAdmin!) (5 points).
    
10.    All servers must be networked together (can communicate) (10 points).

Deliverables: 
     TURN IN THIS  Optimally, you are supposed to turn in a vagrant file. 
If you are unable, turn in what you have, you will lose a considerable number of points, but it is better than nothing.
