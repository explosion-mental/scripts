#!/bin/sh

# A wrapper to tag most music files
# Supported file types: .ogg, .opus, .mp3, .flac

#Dep: opustags, metaflac, eyeD3, vorbiscomment

help_opt() {
echo "Usage: tag [OPTIONS] file

Options:
  -a <artist/author>
  -t <song/chapter title>
  -A <album/book title>
  -n <track/chapter number>
  -N <total number of tracks/chapters>
  -d <year of publication>
  -g <genre>
  -c <comment>"
}

prompt=0

while getopts ":a: :A: :c: :d: :g: :h :n: :N: :t: :p" opt
do
	case "${opt}" in
	a) artist="${OPTARG}"	;;
	A) album="${OPTARG}"	;;
	c) comment="${OPTARG}"	;;
	d) date="${OPTARG}"	;;
	g) genre="${OPTARG}"	;;
	h) help_opt && exit 0	;;
	n) track="${OPTARG}"	;;
	N) total="${OPTARG}"	;;
	t) title="${OPTARG}"	;;
	p) prompt=1		;;
	?) printf "Invalid option: -%s\n" "$OPTARG" && help_opt && exit 1 ;;
	esac
done

shift $((OPTIND - 1))

file="$1"

[ ! -f "$file" ] && echo "Provide file to tag." && help_opt && exit 2

[ $prompt -eq 1 ] && {
	[ -z "$title" ] && echo "Enter a title." && read -r title
	[ -z "$artist" ] && echo "Enter an artist." && read -r artist
	[ -z "$album" ] && echo "Enter an album." && read -r album
	[ -z "$track" ] && echo "Enter a track number." && read -r track
}

#TODO don't overwrite all tags, have a flag for it.
case "$file" in
	*.ogg) echo "Title=$title
Artist=$artist
Album=$album
Track=$track
Total=$total
Date=$date
Genre=$genre
Comment=$comment" | vorbiscomment -w "$file" ;;
	*.opus) echo "Title=$title
Artist=$artist
Album=$album
Track=$track
Total=$total
Date=$date
Genre=$genre
Comment=$comment" | opustags -i -S "$file" ;;
	*.mp3) eyeD3 -Q --remove-all -a "$artist" -A "$album" -t "$title" -n "$track" -N "$total" -Y "$date" "$file" ;;
	*.flac) echo "TITLE=$title
ARTIST=$artist
ALBUM=$album
TRACKNUMBER=$track
TOTALTRACKS=$total
DATE=$date
GENRE=$genre
DESCRIPTION=$comment" | metaflac --remove-all-tags --import-tags-from=- "$file" ;;
	*) echo "File type not implemented yet on '$file'.❌" ;;
esac
