<snap.mk
# snap fails if more than one snap process is active
NPROC=1

# snap can filter a set of files and it's more efficient to align them all on the same run
# rather than running surpi once for each file

results/%.unpaired.sam:	data/%_R1.unpaired.fastq.gz	data/%_R2.unpaired.fastq.gz
	set -x
	mkdir -p `dirname $target`
	snap-aligner \
		single \
		$SNAP_REFERENCEDIR \
		$prereq \
		$SNAP_OPTS \
		-o -sam $target

results/%.paired.sam:	data/%_R1.paired.fastq.gz	data/%_R2.paired.fastq.gz
	set -x
	mkdir -p `dirname $target`
	snap-aligner \
		paired \
		$SNAP_REFERENCEDIR \
		$prereq \
		$SNAP_OPTS \
		-o -sam $target
