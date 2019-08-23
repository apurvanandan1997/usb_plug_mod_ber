# USB 3.0 Plugin Module Gearwork

USB 3.0 Plugin Module is an optional accesssory that can be plugged directly onto the main board of the AXIOM Beta camera thereby adding the capability to allow live stream of RAW 4K video at 20+ FPS. This repository focuses on testing of Bit Error Rate (BER) of the 6 LVDS pairs being used for data traffic. The gearwork's source code is divided into following parts:

  - Transmitter HDLs for Zynq-7000 SoC
  - Receiver HDLs for Lattice MachXO2
  - Software using FTDI D3XX driver

This repository also contains the Transmitter HDLs for Virtex-5 FPGA (optional).

## Usage

#### Dependencies:
Following manufacturer's software tools would be required for building this project.
  
  - [Xilinx Vivado HLx Edition] [vivado]
  - [Lattice Diamond 3] [diamond]
  - [Xilinx ISE Design Suite 14.7] [ise] (only for Virtex-5) 


> Note: Makefiles are configured for default installation directories of above software tools. Make sure the environment variables in .bashrc are properly set up (Refer to respective software installation guides).

Additionally, a proprietary usb driver FTDI D3XX would be required to interface with the FTDI FT601Q chip. These driver libraries have been pushed in this repository itself.
```
$ cd FTD3XX/
$ sudo rm /usr/lib/libftd3xx.so
$ sudo cp libftd3xx.so /usr/lib/
$ sudo cp libftd3xx.so.0.5.21 /usr/lib/
$ sudo cp 51-ftd3xx.rules /etc/udev/rules.d/
$ sudo udevadm control --reload-rules
```

Alternatively you can run the streamer application without installing library:
```
$ sudo LD_LIBRARY_PATH=. ./streamer 0 1 0
```


#### Compilation:

You need to run make command in the root folder of this project to generate programming files ( *.bit) for MachXO2 and Zynq XC7020.

```
$ make
```
```
mkdir ./build/ && cp ./cfg/machxo2.prj ./build/
synpwrap -prj "./build/machxo2.prj"
Copyright (C) 1992-2017 Lattice Semiconductor Corporation. All rights reserved.
Lattice Diamond Version 3.10.0.111.2
INFO - Synplify synthesis engine is launched.
/usr/local/diamond/3.10_x64/synpbase/bin/synplify_pro: 137: [: unexpected operator
/usr/local/diamond/3.10_x64/synpbase/bin/synplify_pro: 151: [: !=: argument expected
/usr/local/diamond/3.10_x64/synpbase/bin/synplify_pro: 320: /usr/local/diamond/3.10_x64/synpbase/bin/config/execute: Syntax error: "(" unexpected (expecting ";;")
Child process exit with 2.
Synthesis exit by 2.
Makefile:13: recipe for target 'build/machxo2.edi' failed
make: *** [build/machxo2.edi] Error 2
```
 ```
$ cd /usr/local/diamond/3.10_x64/synpbase/bin && for file in grep -lRsI "/bin/sh" *; do sudo sed -i -e 's/#!\/bin\/sh/#!\/bin\/bash/g' $file; done
 
 ```
 
#### Testing Procedure:

```
$ lsusb

Bus ___ Device ___: ID 0403:601f Future Technology Devices International, Ltd 
```
Usage: ./streamer <out channel count> <in channel count> [mode]
  channel count: [0, 1] for 245 mode, [0-4] for 600 mode
  mode: 0 = FT245 mode (default), 1 = FT600 mode

```
$ ./streamer 0 1 0

Driver version:0.5.21
Library version:1.0.21
Total 1 device(s)
1CH IN FT245 @ 100MHz
Bit Error Rate and Throughput Testing! Updates in nearly every 20 seconds. 
Bit Error Rate: 0 (00000000/9FFFFFFFF) | Throughput: 2.956 Gbps            
```
Markdown is a lightweight markup language based on the formatting conventions that people naturally use in email.  As [John Gruber] writes on the [Markdown site][df1]

> The overriding design goal for Markdown's
> formatting syntax is to make it as readable
> as possible. The idea is that a
> Markdown-formatted document should be
> publishable as-is, as plain text, without
> looking like it's been marked up with tags
> or formatting instructions.

This text you see here is *actually* written in Markdown! To get a feel for Markdown's syntax, type some text into the left window and watch the results in the right.

### Tech

Dillinger uses a number of open source projects to work properly:

* [AngularJS] - HTML enhanced for web apps!
* [Ace Editor] - awesome web-based text editor
* [markdown-it] - Markdown parser done right. Fast and easy to extend.
* [Twitter Bootstrap] - great UI boilerplate for modern web apps
* [node.js] - evented I/O for the backend
* [Express] - fast node.js network app framework [@tjholowaychuk]
* [Gulp] - the streaming build system
* [Breakdance](http://breakdance.io) - HTML to Markdown converter
* [jQuery] - duh

And of course Dillinger itself is open source with a [public repository][dill]
 on GitHub.

### Installation

Dillinger requires [Node.js](https://nodejs.org/) v4+ to run.

Install the dependencies and devDependencies and start the server.

```sh
$ cd dillinger
$ npm install -d
$ node app
```

For production environments...

```sh
$ npm install --production
$ NODE_ENV=production node app
```

### Plugins

Dillinger is currently extended with the following plugins. Instructions on how to use them in your own application are linked below.

| Plugin | README |
| ------ | ------ |
| Dropbox | [plugins/dropbox/README.md][PlDb] |
| GitHub | [plugins/github/README.md][PlGh] |
| Google Drive | [plugins/googledrive/README.md][PlGd] |
| OneDrive | [plugins/onedrive/README.md][PlOd] |
| Medium | [plugins/medium/README.md][PlMe] |
| Google Analytics | [plugins/googleanalytics/README.md][PlGa] |


### Development

Want to contribute? Great!

Dillinger uses Gulp + Webpack for fast developing.
Make a change in your file and instantanously see your updates!

Open your favorite Terminal and run these commands.

First Tab:
```sh
$ node app
```

Second Tab:
```sh
$ gulp watch
```

(optional) Third:
```sh
$ karma test
```
#### Building for source
For production release:
```sh
$ gulp build --prod
```
Generating pre-built zip archives for distribution:
```sh
$ gulp build dist --prod
```
### Docker
Dillinger is very easy to install and deploy in a Docker container.

By default, the Docker will expose port 8080, so change this within the Dockerfile if necessary. When ready, simply use the Dockerfile to build the image.

```sh
cd dillinger
docker build -t joemccann/dillinger:${package.json.version} .
```
This will create the dillinger image and pull in the necessary dependencies. Be sure to swap out `${package.json.version}` with the actual version of Dillinger.

Once done, run the Docker image and map the port to whatever you wish on your host. In this example, we simply map port 8000 of the host to port 8080 of the Docker (or whatever port was exposed in the Dockerfile):

```sh
docker run -d -p 8000:8080 --restart="always" <youruser>/dillinger:${package.json.version}
```

Verify the deployment by navigating to your server address in your preferred browser.

```sh
127.0.0.1:8000
```

#### Kubernetes + Google Cloud

See [KUBERNETES.md](https://github.com/joemccann/dillinger/blob/master/KUBERNETES.md)


### Todos

 - Write MORE Tests
 - Add Night Mode

License
----

MIT


**Free Software, Hell Yeah!**

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

   [vivado]: <https://www.xilinx.com/products/design-tools/vivado.html>
   [diamond]: <http://www.latticesemi.com/latticediamond>
   [ise]: <https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/design-tools/v2012_4---14_7.html>
   [dill]: <https://github.com/joemccann/dillinger>
   [git-repo-url]: <https://github.com/joemccann/dillinger.git>
   [john gruber]: <http://daringfireball.net>
   [df1]: <http://daringfireball.net/projects/markdown/>
   [markdown-it]: <https://github.com/markdown-it/markdown-it>
   [Ace Editor]: <http://ace.ajax.org>
   [node.js]: <http://nodejs.org>
   [Twitter Bootstrap]: <http://twitter.github.com/bootstrap/>
   [jQuery]: <http://jquery.com>
   [@tjholowaychuk]: <http://twitter.com/tjholowaychuk>
   [express]: <http://expressjs.com>
   [AngularJS]: <http://angularjs.org>
   [Gulp]: <http://gulpjs.com>

   [PlDb]: <https://github.com/joemccann/dillinger/tree/master/plugins/dropbox/README.md>
   [PlGh]: <https://github.com/joemccann/dillinger/tree/master/plugins/github/README.md>
   [PlGd]: <https://github.com/joemccann/dillinger/tree/master/plugins/googledrive/README.md>
   [PlOd]: <https://github.com/joemccann/dillinger/tree/master/plugins/onedrive/README.md>
   [PlMe]: <https://github.com/joemccann/dillinger/tree/master/plugins/medium/README.md>
   [PlGa]: <https://github.com/RahulHP/dillinger/blob/master/plugins/googleanalytics/README.md>
