# Creating a Night Light feature in my Distro

1) Install: redshift and redshift-gtk

2) monitor using gtk but pass commands to redshift. Check source for more: http://jonls.dk/redshift/

3) Setting coords: redshift -l 43.6532:79.3832

4) Now, it will adjust screenlight based on location.

5) Keep changes permamently:
a) create .config/redshift.conf
b) redshift-gtk will use this conf file to keep temp to 3000
c) paste into conf file
```
; Global settings for redshift
[redshift]
; Set the day and night screen temperatures
temp-day=3000
temp-night=3000
location-provider=manual

[manual]
lat=43.6532
lon=79.3832
```
5) Trust software reliability XD
