#!/bin/bash
#	$Id$
#
#	Makes Fig 7 for Appendix O (labeled lines)
#
pscoast -R50/160/-15/15 -JM5.3i -Gburlywood -Sazure -A500 -K -P > GMT_App_O_7.ps
grdcontour geoid.nc -J -O -K -B20f10WSne -C10 -A20+d+um+f8p -Gl50/10S/160/10S -S10 \
	-T:-+ >> GMT_App_O_7.ps
psxy -R -J -O -SqD15d:+gblack+fwhite+Ld+o+u-\\260 -Wthick transect.d >> GMT_App_O_7.ps
