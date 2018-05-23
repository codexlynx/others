## Mixing repository
Here you can found, diferent things.

--------

### Disclaimer

* __License__:
This repo is subject under the following license:

 >Creative Commons Attribution-ShareAlike 3.0

 ![](https://licensebuttons.net/l/by-sa/3.0/88x31.png "Creative Commons")

 More Info: [Here](https://creativecommons.org/licenses/by-sa/3.0/ "Legal Description")

### Vulnerabilities

* __Shenzhen C-Data CD7201__: Multiple Vulnerabilities (Authentication Bypass, Command Injection, Cross-Site-Scripting).

  * [Packet Storm](https://packetstormsecurity.com/files/143312/Shenzhen-C-Data-CD7201-Command-Injection-Cross-Site-Scripting.html)
  * [0day.today](https://0day.today/exploits/28109)

* __phpVirtualBox__: Cross Site Request Forgery / Stored Cross-Site-Scripting.

  * [Packet Storm](https://packetstormsecurity.com/files/147570/phpVirtualBox-5.2-Cross-Site-Request-Forgery-Cross-Site-Scripting.html)
  * [0day.today](https://0day.today/exploits/30333)

### Patches

* __PfSense Developer Shell "playback listpkg"__:
This is a functionality bug, when you run ```pfSsh.php playback listpkg```.

	* The bug:

		 ![](https://cloud.githubusercontent.com/assets/12601189/15285101/36620e36-1b4d-11e6-94c4-a3d1259cbad8.jpeg)

	* How to patch:
		* 1) Download path ([Here](https://raw.githubusercontent.com/codexlynx/others/master/patches/pfSense-listpkg.patch))
		* 2) Run: ```patch /etc/phpshellsessions/listpkg < pfSense-listpkg.patch```

### About
This repo was created by: __@codexlynx__.

* Twitter: [https://twitter.com/codexlynx](https://twitter.com/codexlynx)
* GitHub: [https://github.com/codexlynx](https://github.com/codexlynx)
