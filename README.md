## A Simple Server with Node.js Express

This is a simple skeleton Express server project that works on any of the [balena][balena-link] supported devices.

This project serves up `"Hello World!"` on port `:80` of your balena device.

To get this project up and running, you will need to signup for a balena account [here][signup-page] and set up an application and device. You'll find full details in our [Getting Started tutorial][gettingStarted-link]. 

Once you have downloaded this project, you can `balena push` it using the [balenaCLI][balena-cli]. This command will package up and push the code to the balena builders, where it will be compiled and built and deployed to every device in the application fleet. When it completes, you'll have a node.js web server running on your device and see some logs on your [balenaCloud dashboard][balena-dashboard].

To give your device a public URL, access the device page on the [balenaCloud dashboard][balena-dashboard], and choose the _Public Device URL_ toggle. Alternatively, you can point your browser to your device's IP address.

[balena-link]:https://balena.io/
[signup-page]:https://dashboard.balena-cloud.com/signup
[gettingStarted-link]:http://balena.io/docs/learn/getting-started/
[balena-cli]:https://www.balena.io/docs/reference/cli/
[balena-dashboard]:https://dashboard.balena-cloud.com/


We based this on this socat command:
https://superuser.com/questions/403331/how-do-i-link-two-serial-ports-in-gnu-linux

We also had to disable tty getty serial on ttyS0 for this to work.
look at:
https://forums.balena.io/t/serial-interface-development-image/6099
https://github.com/balena-os/meta-balena/issues/1387

listing serial ports and using screen with serial:
https://www.cyberciti.biz/faq/unix-linux-apple-osx-bsd-screen-set-baud-rate/

alternatively:
https://tio.github.io/
https://learn.sparkfun.com/tutorials/terminal-basics/all#command-line-windows-mac-linux

also look at this 5v to 3.3v serial "converter":
https://www.instructables.com/Pi-Cubed-How-to-connect-a-33V-Raspberry-Pi-to-a-5V/


For the LED control, we used this tutorial:
https://raspberrypi-aa.github.io/session2/bash.html


