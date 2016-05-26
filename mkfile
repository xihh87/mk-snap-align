<snap.mk
# snap fails if more than one snap process is active
NPROC=1

# snap can filter a set of files and it's more efficient to align them all on the same run
# rather than running surpi once for each file
SNAP_FILES=`{find -L data/ -name '*.fastq'}

results/snap/%.unmapped.sam:	$SNAP_FILES
	mkdir -p `dirname $target`
	snap-aligner \
		single \
		$SNAP_REFERENCEDIR \
		$prereq \
		$SNAP_OPTS \
		-o -sam - \
		> $target
