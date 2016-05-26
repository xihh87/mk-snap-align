# The directory where the reference is used
SNAP_REFERENCEDIR=''

# Here you should set aditional options for snap
#
# In example, SURPI defaults:
#
# SNAP_OPTS='-x -f -h 250 -n 25 -F u'
SNAP_OPTS=''

## Recommended options by organism:
##
## - Human:
#SNAP_OPTS+=' -d 12'

## Recommended cache options:
##
## - lots of memory:
#SNAP_OPTS+=' -map'
##
## - less memory:
#SNAP_OPTS+=' -pre -map'

## By default SNAP uses all available cores.
## to use less cores, uncomment the following option,
## where 24 is the max number of cores you want to use:
#SNAP_OPTS+=' -t 24'
