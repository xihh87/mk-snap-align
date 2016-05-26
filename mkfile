<snap.mk
# snap fails if more than one snap process is active
NPROC=1

# snap can filter a set of files and it's more efficient to align them all on the same run
# rather than running surpi once for each file
SNAP_FILES=`{find -L data/ -name '*.fastq' \
	-o -name '*.fastq.gz' \
	-o -name '*.sam' \
	-o -name '*.bam' }

snap:V:	$SNAP_TARGETS

'results/snap/(.*)_(.*).sam':R:	$SNAP_FILES
	mkdir -p `dirname $target`
	snap-aligner \
		single \
		$SNAP_REFERENCEDIR/$stem2 \
		$prereq \
		$SNAP_OPTS \
		-o -sam - \
		> $target
