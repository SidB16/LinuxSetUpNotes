# Why?
Wireshark has implemented Privilege Separation which means that the Wireshark GUI (or the tshark CLI) can run as a normal user while the dumpcap capture utility runs as root. This can be achieved by installing dumpcap setuid root. The advantage of this solution is that while dumpcap is run as root the vast majority of Wireshark's code is run as a normal user (where it can do much less damage). 

## Step

## Option1
Start Wireshark as Administrator

Advantage: Very easy to work with.

Disadvantage: It's very unsecure running Wireshark this way as every possible Wireshark exploit will be running with the administrator account being able to compromise the whole system. 

## Option2
Installing dumpcap and allowing non-root users to capture packets
      Members of the wireshark group will be able to capture packets on network
      interfaces. This is the preferred way of installation if Wireshark/Tshark
      will be used for capturing and displaying packets at the same time, since
      that way only the dumpcap process has to be run with elevated privileges
      thanks to the privilege separation[1].

      This is selected by answering "<Yes>" to the question mentioned
      above.

      Note that no user will be added to group wireshark automatically;
      a system administrator has to add them manually, using the usermod
      command:

         sudo usermod -a -G wireshark {username}

      or, if you're using a desktop environment that includes a tool for
      managing users, such as the "Users and Groups" tool in GNOME (found
      in the gnome-system-tools package), using that tool.  After a user
      is added to the wireshark group, she/he may need to log in again to
      make her/his new group membership take effect and be able to capture
      packets.

      The additional privileges are provided using the Linux Capabilities
      system where it is available and resorting to setting the set-user-id
      bit of the dumpcap binary as a fall-back, where the Linux Capabilities
      system is not present (Debian GNU/kFreeBSD, Debian GNU/Hurd).

      Linux kernels provided by Debian support Linux Capabilities, but custom
      built kernels may lack this support. If the support for Linux
      Capabilities is not present at the time of installing wireshark-common
      package, the installer will fall back to set the set-user-id bit to
      allow non-root users to capture packets.

      If installation succeeds with using Linux Capabilities, non-root users
      will not be able to capture packets while running kernels not supporting
      Linux Capabilities.

      Note that capturing USB packets is not enabled for non-root users by using
      Linux Capabilities. You have to capture the packets using the method
      described in I./a., setting the set-user-id permanently using
      dpkg-statoverride or running dumpcap as root.

      The installation method can be changed any time by running:

         sudo dpkg-reconfigure wireshark-common

      The question mentioned above will be asked; answer "<Yes>" to it.
