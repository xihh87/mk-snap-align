<snap.mk
# snap fails if more than one snap process is active
NPROC=1

SNAP_TARGETS=`{./snap-targets}

align:V:	$SNAP_TARGETS

# snap can filter a set of files and it's more efficient to align them all on the same run
# rather than running surpi once for each file

'results/align/%.bam':D:	'data/%_R1.fastq.gz'	'data/%_R2.fastq.gz'
	mkdir -p `dirname $target`
	snap-aligner \
		paired \
		$SNAP_REFERENCE \
		$prereq \
		$SNAP_OPTS \
		-o -bam $target'.build' \
	&& mv $target'.build' $target
