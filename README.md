# tmuxify
Based on [Template script to run program in new session resp. attach to existing one] (https://wiki.archlinux.org/index.php/Tmux#Template_script_to_run_program_in_new_session_resp._attach_to_existing_one)

Originally created to connect with ssh-keys as newsbeueter-user to a running newsbeuter tmux-session on the server.


You can change the force command which is executed directly at connecting:

 # */etc/ssh/sshd_config*

    Match User newsbeuter
        X11Forwarding no
        AllowTcpForwarding no
        ForceCommand /usr/local/bin/tmuxify newsbeuter
