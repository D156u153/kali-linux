Move script to /usr/bin/ folder

We need to move this file to /usr/bin.

mv rndhostname /usr/bin/rndhostname

Make it executable

Use the following command to make rndhostname file executable.

chmod +x /usr/bin/rndhostname


AUTOSTART
--------


Open terminal and execute this to make a directory named autostart if it doesn’t exist already. Just execute it. It it exists, bash will let you know; and if it doesn’t, bash will create it.

mkdir ~/.config/autostart

    Now you have to create a file using gEdit or any other text editor for the intended applications, which you want to run at startup. The name format for that file can be anything like applications_name.desktop. It’s mainly a .desktop file containing necessary info to run that specific program at startup, e.g. I wanted to run rndhostname at startup. So I created the following file:
    
    
    [Desktop Entry]
    Type=Application
    Exec=/usr/bin/rndhostname
    Hidden=false
    X-GNOME-Autostart-enabled=true
    Name[en_US]=rndhostname
    Name=rndhostname
    Comment[en_US]=Start rndhostname when GNOME starts
    Comment=Start rndhostname when GNOME starts
