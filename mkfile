<snap.mk
# snap fails if more than one snap process is active
NPROC=1

SNAP_DIRS=`{find -L data/ \
	-name '*.fastq' \
	-o -name '*.fastq.gz' \
	-o -name '*.sam' \
	-o -name '*.bam' \
	| xargs -l dirname \
	| sort -u \
	| awk '{print "N\t" $0}'	}

SNAP_REFS=`{find -L $SNAP_REFERENCEDIR/ \
	-maxdepth 1 \
	-mindepth 1 \
	-type d \
	| xargs -l basename \
	| awk '{print "N\t" $0}'	}

snap:V:	$SNAP_TARGETS

# snap can filter a set of files and it's more efficient to align them all on the same run
# rather than running surpi once for each file

'results/snap/(.*)_(.*).sam':R:	$SNAP_FILES
	mkdir -p `dirname $target`
	snap-aligner \
		single \
		$SNAP_REFERENCEDIR/$stem2 \
		$prereq \
		$SNAP_OPTS \
		-o -sam - \
		> $target
