<snap.mk
# snap fails if more than one snap process is active
NPROC=1

# snap can filter a set of files and it's more efficient to align them all on the same run
# rather than running surpi once for each file
SNAP_PAIRED_TARGETS=`{find -L data/ -name '*_1.fastq' \
	| sed -e 's#data/#results/without-human/#g' \
		-e 's#_1.fastq#.unmapped.sam#g'}

SNAP_SINGLE_TARGETS=`{find -L data/ -name '*_singletons.fastq' \
	| sed -e 's#data/#results/without-human/#g' \
		-e 's#_singletons.fastq#.unmapped_singletons.sam#g'}

filter-human-out:V: $SNAP_SINGLE_TARGETS $SNAP_PAIRED_TARGETS

results/without-human/%.unmapped_singletons.sam:D:	data/%_singletons.fastq
	mkdir -p `dirname $target`
	snap-aligner \
		single \
		$SNAP_REFERENCEDIR \
		$prereq \
		$SNAP_OPTS \
		-o -sam $target

results/without-human/%.unmapped.sam:D:	data/%_1.fastq	data/%_2.fastq
	mkdir -p `dirname $target`
	snap-aligner \
		paired \
		$SNAP_REFERENCEDIR \
		$prereq \
		$SNAP_OPTS \
		-o -sam $target
