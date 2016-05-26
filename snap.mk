SNAP_TARGETS=	'results/snap/uncropped.nonhuman_nt.1.sam' \
	'results/snap/uncropped.nonhuman_nt.2.sam' \
	'results/snap/uncropped.nonhuman_nt.3.sam' \
	'results/snap/uncropped.nonhuman_nt.4.sam' \
	'results/snap/uncropped.nonhuman_nt.5.sam' \
	'results/snap/uncropped.nonhuman_nt.6.sam' \
	'results/snap/uncropped.nonhuman_nt.7.sam' \
	'results/snap/uncropped.nonhuman_nt.8.sam' \
	'results/snap/uncropped.nonhuman_nt.9.sam' \
	'results/snap/uncropped.nonhuman_nt.10.sam' \
	'results/snap/uncropped.nonhuman_nt.11.sam' \
	'results/snap/uncropped.nonhuman_nt.12.sam' \
	'results/snap/uncropped.nonhuman_nt.13.sam' \
	'results/snap/uncropped.nonhuman_nt.14.sam' \
	'results/snap/uncropped.nonhuman_nt.15.sam' \
	'results/snap/uncropped.nonhuman_nt.16.sam' \
	'results/snap/uncropped.nonhuman_nt.17.sam' \
	'results/snap/uncropped.nonhuman_nt.18.sam' \
	'results/snap/uncropped.nonhuman_nt.19.sam' \
	'results/snap/uncropped.nonhuman_nt.20.sam' \
	'results/snap/uncropped.nonhuman_nt.21.sam' \
	'results/snap/uncropped.nonhuman_nt.22.sam' \
	'results/snap/uncropped.nonhuman_nt.23.sam' \
	'results/snap/uncropped.nonhuman_nt.24.sam' \
	'results/snap/uncropped.nonhuman_nt.25.sam' \
	'results/snap/uncropped.nonhuman_nt.26.sam' \
	'results/snap/uncropped.nonhuman_nt.27.sam' \
	'results/snap/uncropped.nonhuman_nt.28.sam' \
	'results/snap/uncropped.nonhuman_nt.29.sam' \
	'results/snap/uncropped.nonhuman_nt.30.sam' \
	'results/snap/uncropped.nonhuman_nt.31.sam' \
	'results/snap/uncropped.nonhuman_nt.32.sam' \
	'results/snap/uncropped.nonhuman_nt.33.sam' \
	'results/snap/uncropped.nonhuman_nt.34.sam' \
	'results/snap/uncropped.nonhuman_nt.35.sam' \
	'results/snap/uncropped.nonhuman_nt.36.sam' \
	'results/snap/uncropped.nonhuman_nt.37.sam' \
	'results/snap/uncropped.nonhuman_nt.38.sam' \
	'results/snap/uncropped.nonhuman_nt.39.sam' \
	'results/snap/uncropped.nonhuman_nt.40.sam' \
	'results/snap/uncropped.nonhuman_nt.41.sam' \
	'results/snap/uncropped.nonhuman_nt.42.sam' \
	'results/snap/uncropped.nonhuman_nt.43.sam' \
	'results/snap/uncropped.nonhuman_nt.44.sam' \
	'results/snap/uncropped.nonhuman_nt.45.sam' \
	'results/snap/uncropped.nonhuman_nt.46.sam' \
	'results/snap/uncropped.nonhuman_nt.47.sam' \
	'results/snap/uncropped.nonhuman_nt.48.sam' \
	'results/snap/uncropped.nonhuman_nt.49.sam' \
	'results/snap/uncropped.nonhuman_nt.50.sam' \
	'results/snap/uncropped.nonhuman_nt.51.sam' \
	'results/snap/uncropped.nonhuman_nt.52.sam' \
	'results/snap/uncropped.nonhuman_nt.53.sam' \
	'results/snap/uncropped.nonhuman_nt.54.sam' \
	'results/snap/uncropped.nonhuman_nt.55.sam' \
	'results/snap/uncropped.nonhuman_nt.56.sam' \
	'results/snap/uncropped.nonhuman_nt.57.sam' \
	'results/snap/uncropped.nonhuman_nt.58.sam'

## The directory where the reference is used
SNAP_REFERENCEDIR='/reference/COMP_SNAP/'

## Here you should set aditional options for snap
##
## In example, SURPI defaults:
##
SNAP_OPTS='-x -f -h 250 -n 25'

## To filter unmatched regions:
#SNAP_OPTS=$SNAP_OPTS' -F u'

## Recommended options by organism:
##
## - Human:
SNAP_OPTS=$SNAP_OPTS' -d 12'

## Recommended cache options:
##
## - reference on cache:
#SNAP_OPTS=$SNAP_OPTS' -map'
##
## - reference not in cache:
SNAP_OPTS+=' -pre -map'

## By default SNAP uses all available cores.
## to use less cores, uncomment the following option,
## where 24 is the max number of cores you want to use:
SNAP_OPTS=$SNAP_OPTS' -t 24'
